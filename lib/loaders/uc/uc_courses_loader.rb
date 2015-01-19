class UCCoursesLoader < CoursesLoader
  require 'net/http'
  require 'nokogiri'

  def initialize
    @organization = Organization.find_by_abbreviation('UC')
    @sj = Campus.find_by_abbreviation('SJ')
    @cc = Campus.find_by_abbreviation('CC')
    @lc = Campus.find_by_abbreviation('LC')
    @vr = Campus.find_by_abbreviation('VR')
    @or = Campus.find_by_abbreviation('OR')
    @ex = Campus.find_by_abbreviation('EX')
  end

  def regex(input)
    !!(input =~ /(^[L,M,W,J,V,S,1,2,3,4,5,6,7,8,:,;,a, ,\-]+$)/)
  end

  def get_camp(name)
    case name.downcase
      when 'San Joaquin'.downcase
        @sj
      when 'Lo Contador'.downcase
        @lc
      when 'Casa Central'.downcase
        @cc
      when 'Campus Oriente'.downcase
        @or
      when 'Villarica'.downcase
        @vr
      when 'Campus Externo'.downcase
        @ex
      else
        nil
    end
  end

  def get_unity(short_name)
    AcademicUnity.find_by_short_name(short_name)
  end

  def get_url(period, unity, page)
    "http://admisionyregistros.uc.cl/dara/libcursos/periodo2#{period}/ua#{unity}_#{page}.html"
  end

  def remove_shitty_chars(input)
    c = input[0]
    l = input[-1]
    if  c == ' ' || c == '-' || c == '('
      remove_shitty_chars(input[1..input.length-1])
    elsif l == ')'
      remove_shitty_chars(input[0..input.length-2])
    else
      input
    end
  end

  def relations
    # {UNITY : Faculty}
    r = Hash.new
    r[28] = get_unity('Comunicaciones')
    r[1] = get_unity('Construcción Civil')
    r[17] = get_unity('Derecho')
    r[59] = get_unity('Diseño')
    r[20] = get_unity('Educación')
    r[13] = get_unity('Enfermería')
    #r[91] = f('Antropología') Same as Sociologia
    r[11] = get_unity('Agronomía e Ingeniería Forestal')
    r[94] = get_unity('Arquitectura')
    r[33] = get_unity('Arte')
    r[2] = get_unity('Astrofísica')
    r[12] = get_unity('Ciencias Biológicas')
    r[16] = get_unity('Ciencias de la Salud')
    r[5] = get_unity('Ciencias Económicas y Administrativas')
    r[45] = get_unity('Ciencia Política')
    #r[9] = f('College') Diferent layout http://admisionyregistros.uc.cl/dara/libcursos/periodo21/ua94_3.html
    r[51] = get_unity('Estética')
    r[95] = get_unity('Estudios Urbanos y Territoriales')
    r[67] = get_unity('Filosofía')
    r[3] = get_unity('Física')
    r[57] = get_unity('Geografía')
    r[56] = get_unity('Historia')
    r[4] = get_unity('Ingeniería')
    r[64] = get_unity('Letras')
    r[6] = get_unity('Matemática')
    r[14] = get_unity('Medicina')
    r[70] = get_unity('Música')
    r[15] = get_unity('Odontología')
    r[29] = get_unity('Psicología')
    r[10] = get_unity('Química')
    r[91] = get_unity('Sociología')
    r[34] = get_unity('Teatro')
    r[38] = get_unity('Teología')
    r[30] = get_unity('Trabajo Social')
    r[21] = get_unity('Villarrica')
    return r
  end

  ROW_NO = 'No'
  ROW_INITIALS = 'Sigla'
  ROW_SECTION = 'Sec.'
  ROW_CREDIT = 'Créd.'
  ROW_CLASSNAME = 'Nombre Asignatura'
  ROW_VAC_DISP = 'Vac.  Disp.'
  ROW_TEACHERS = 'Profesores'
  ROW_SCHEDULE = 'Horario'
  ROW_ACTIVITY_TYPE = 'Actividad'
  ROW_CLASSROOMS = 'Salas'
  ROW_CAMPUS = 'Campus'
  ROW_TITLES = 'Títulos'

  def row_names
    [ROW_NO,
    ROW_INITIALS,
    ROW_SECTION,
    ROW_CREDIT,
    ROW_CLASSNAME,
    ROW_VAC_DISP,
    ROW_TEACHERS,
    ROW_SCHEDULE,
    ROW_ACTIVITY_TYPE,
    ROW_CLASSROOMS,
    ROW_CAMPUS,
    ROW_TITLES]
  end


  def get_website(url)
    url = URI.parse(url)
    req = Net::HTTP.new(url.host, url.port)
    req.get(url.path)
  end

  def load_courses(year, semester)
    relations_array = relations
    relations_array.each do |number, unity|
      keep_going = true
      page = 0
      puts '====================================='
      puts "== Unity: #{unity.short_name} (#{number})"
      puts '====================================='
      while keep_going
        url = get_url(semester, number, page)
        web = get_website(url)
        if web.code == '200'
          puts '====================================='
          puts 'Valid URL: '.concat(url)
          html = web.body
          doc = Nokogiri::HTML(html)
          title = remove_shitty_chars(doc.xpath('//body/table/tr/td/font/b/font').text)

          unity.name = title.titleize
          unity.save

          table = doc.xpath('//body/table/tr[9]/td/table')

          columns = Hash.new
          (0..table.xpath('tr[1]/td').count).each do |column|
            column_name = table.xpath("tr[1]/td[#{column}]").text
            row_index = row_names.index(column_name)
            columns[column_name] = row_index
            puts column_name
            puts row_index
          end

          table = table.xpath('tr')
          doc = nil

          table = table[2..table.size] # Remove table titles
          table.each do |cell|
            attributes = cell.xpath('td')
            puts '///////////////////////////////'
            puts "// Number: #{attributes[columns[ROW_NO]].text}"

            initial = attributes[columns[ROW_INITIALS]].text
            course = Course.find_by_initials(initial)
            if course.present?
              puts 'Course found: '.concat(course.initials)
            else
              credits = remove_shitty_chars(attributes[columns[ROW_CREDIT]].text)
              name = remove_shitty_chars(attributes[columns[ROW_CLASSNAME]].text)
              course = Course.create(initials: initial,
                                     name: name,
                                     credits: credits,
                                     academic_unity: unity)
              puts 'Course not found, created: '.concat(course.inspect)
            end

            section_number = remove_shitty_chars(attributes[columns[ROW_SECTION]].text)
            section = Section.find_by_course_id_and_year_and_semester_and_number(course.id, year, semester, section_number)
            if section.present?
              puts 'Section found: '.concat(section.identifier)
            else
              section = Section.create(course: course,
                                       year: year,
                                       semester: semester,
                                       number: section_number)
              puts 'Section not found, created: '.concat(section.identifier)
            end

            #slots_min = remove_blank_prefix(attributes[5].text)
            #slots_opt = remove_blank_prefix(attributes[6].text)
            #slots_ofg = remove_blank_prefix(attributes[7].text)

            teachers = attributes[columns[ROW_TEACHERS]].xpath('font')
            teachers.children.each do |t|
              if t.text?
                t_name = remove_shitty_chars(t.text)
                if t_name.downcase == 'sin profesores' || t_name.downcase == 'por definir'
                  puts course.name.concat(' has no teachers.')
                else
                  teacher = Teacher.find_by_name(t_name)
                  if teacher.present?
                    puts 'Teacher found: '.concat(teacher.name)
                  else
                    teacher = Teacher.new(name: t_name)
                    puts 'Teacher not found, created: '.concat(teacher.name)
                  end
                  teacher.academic_unities << unity unless teacher.academic_unities.include?(unity)
                  teacher.save
                  section.teachers << teacher unless section.teachers.include?(teacher)
                end
              end
            end
            section.save
            puts section.inspect

            schedules = attributes[columns[ROW_SCHEDULE]].xpath('font').children
            module_types = attributes[columns[ROW_ACTIVITY_TYPE]].xpath('font').children
            classrooms = attributes[columns[ROW_CLASSROOMS]].xpath('font').children
            campus = remove_shitty_chars(attributes[columns[ROW_CAMPUS]].xpath('font').children.first.text) rescue ''

            for i in 0..module_types.length-1 do
              if module_types[i].text?
                module_type = remove_shitty_chars(module_types[i].text) rescue ''
                module_block = remove_shitty_chars(schedules[i].text) rescue ''
                module_place = remove_shitty_chars(classrooms[i].text) rescue ''

                puts '-------------'
                puts 'Vars:'
                puts 'Unity: '.concat(unity.short_name)
                puts 'Course: '.concat(section.identifier)
                puts 'Module type: '.concat(module_type)
                puts 'Module blocks: '.concat(module_block)
                puts 'Campus: '.concat(campus)
                puts 'Place: '.concat(module_place)

                c_array = module_place.split(': ')
                if c_array.size == 2
                  module_place = remove_shitty_chars(c_array[1])
                end

                puts 'Final Place: '.concat(module_place)
                puts '-------------'

                #if camp.present?
                #  place = Place.find_by_insensitive_pid_and_camp_id(module_place, camp.id)
                #else
                #  place = Place.find_by_insensitive_pid(module_place)
                #end

                place_campus = Campus.where("lower(unaccent(short_name)) = ? AND organization_id = ?", campus.downcase, @organization.id).first
                normalized = module_place.downcase.gsub(/([-,., ,_])/, '#') if module_place.present?
                normalized ||= nil
                p = place_campus.places.where("regexp_replace(lower(unaccent(identifier)), '([-,., ,_])', '#')  = ?", normalized).first if place_campus.present? && normalized.present?

                if module_block.present? && regex(module_block)
                  matches = ScheduleModule.modules_for_loader(@organization, module_block)
                  matches.each do |s|

                    # Drawing.where("drawing_number REGEXP ?", 'A\d{4}')

                    created_item = ScheduleItem.create(class_type: module_type,
                                            section: section,
                                            place_name: module_place,
                                            campus_name: campus,
                                            place: p,
                                            schedule_module: s)
                    puts "Created item: #{section.identifier} | #{module_type} | #{s.initials} | place: #{p.present? ? p.id : 'none'} - #{module_place} @ #{campus}"
                  end
                else
                  created_item = ScheduleItem.create(class_type: module_type,
                                          section: section,
                                          place_name: module_place,
                                          campus_name: campus,
                                          place: p,
                                          schedule_module: nil)
                  puts "Created item: #{section.identifier} | #{module_type} | No ModuleBlock | place: #{p.present? ? p.id : 'none'} - #{module_place} @ #{campus}"
                end

                # SELECT DISTINCT schedule_items.id, schedule_items.place_name, schedule_items.campus_name, schedule_items.place_id FROM schedule_items LEFT OUTER JOIN places ON places.id = schedule_items.place_id;

              end
            end
          end
          page += 1
        else
          puts '====================================='
          puts 'Url not valid: '.concat(url)
          keep_going = false
        end
      end
    end
  end
end