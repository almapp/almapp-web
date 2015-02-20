class UCCoursesLoader < CoursesLoader
  require 'net/http'
  require 'nokogiri'

  # On console: ActiveRecord::Base.logger.level = 1; u = UCCoursesLoader.new; u.load_courses(2015,1)

  def self.regex(input)
    !!(input =~ /(^[L,M,W,J,V,S,1,2,3,4,5,6,7,8,:,;,a, ,\-]+$)/)
  end

  def self.get_url(period, unity, page)
    "http://admisionyregistros.uc.cl/dara/libcursos/periodo2#{period}/ua#{unity}_#{page}.html"
  end

  def self.remove_shitty_chars(input)
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

  def self.test_relation
    { 4 => 'Ingeniería' }
  end

  def self.relations
    # Diferent layout http://admisionyregistros.uc.cl/dara/libcursos/periodo21/ua9_42.html
    {
     # 9 => 'College', # academic unity on courses will be overwritten
     4 => 'Ingeniería',
     28 => 'Comunicaciones',
     1 => 'Construcción Civil',
     17 => 'Derecho',
     59 => 'Diseño',
     20 => 'Educación',
     13 => 'Enfermería',
     11 => 'Agronomía e Ingeniería Forestal',
     94 => 'Arquitectura',
     33 => 'Arte',
     2 => 'Astrofísica',
     12 => 'Ciencias Biológicas',
     16 => 'Ciencias de la Salud',
     5 => 'Ciencias Económicas y Administrativas',
     45 => 'Ciencia Política',
     51 => 'Estética',
     95 => 'Estudios Urbanos y Territoriales',
     67 => 'Filosofía',
     3 => 'Física',
     57 => 'Geografía',
     56 => 'Historia',
     64 => 'Letras',
     6 => 'Matemática',
     14 => 'Medicina',
     70 => 'Música',
     15 => 'Odontología',
     29 => 'Psicología',
     10 => 'Química',
     91 => 'Sociología',
     34 => 'Actuación',
     38 => 'Teología',
     30 => 'Trabajo Social',
     21 => 'Villarrica'
    }
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

  def self.get_course_info(course, year, period)
    url = "http://www3.uc.cl/buscacursos/informacionCurso.ajax.php?semestre=#{year}-#{period}&sigla=#{course.initials}&seccion=1"
    uri = URI.parse(url)
    req = Net::HTTP.new(uri.host, uri.port)
    response = req.get(uri)

    if response.code == '200'
      doc = Nokogiri::HTML(response.body)
      info = doc.xpath('/html/body/div[1]/div[1]/div[1]').text
      return info.empty? ? '' : info.strip
    else
      ''
    end
  end

  def self.get_teacher_pic(teacher, course, year, period)
    name = teacher.name

    url = "http://www3.uc.cl/buscacursos/getFotoProfe.db.php?nombre=#{name}&semestre=#{year}-#{period}&sigla=#{course.initials}&seccion=1"
    uri = URI.parse(URI.encode(url))
    req = Net::HTTP.new(uri.host, uri.port)
    response = req.get(uri)

    tempfile = Tempfile.new([SecureRandom.hex.to_s, '.jpeg'])
    File.open(tempfile.path,'wb') do |f|
      f.write response.body
    end
    return tempfile
  end

  def self.get_website(url)
    uri = URI.parse(url)
    req = Net::HTTP.new(uri.host, uri.port)
    req.get(uri.path)
  end

  def self.should_skip(year, period, academic_number, page)
    (year == 2015 && period == 1 && academic_number == 9 && page == 42)
  end

  def self.log(message)
    puts message if true
  end

  def self.load_courses(year, period)
    load_courses_for(relations, year, period)
    Course.reindex
    Teacher.reindex
  end


  def self.load_courses_for(relations_hash, year, period)
    relations_hash.each do |number, unity|
      academic_unity = AcademicUnity.find_by_short_name(unity)
      courses_of(number, academic_unity, year, period)
    end
  end

  def self.courses_of(number, unity, year, period)
    log '====================================='
    log "== Unity: #{unity.short_name} (#{number})"
    log '====================================='

    page = -1
    keep_going = true

    while keep_going
      page += 1

      if should_skip(year, period, number, page)
        page += 1
        next
      end

      web = get_website(get_url(period, number, page))
      if web.code != '200'
        break
      end

      # unity.name = remove_shitty_chars(doc.xpath('//body/table/tr/td/font/b/font').text)

      get_attributes_row(Nokogiri::HTML(web.body)) do |attributes, columns|
        course_number = attributes[columns.index(ROW_NO)].text.to_i rescue 0
        next if course_number == 0

        log '///////////////////////////////'
        log "// Number: #{course_number}"


        # Course
        initial = attributes[columns.index(ROW_INITIALS)].text
        credits = remove_shitty_chars(attributes[columns.index(ROW_CREDIT)].text)
        name = remove_shitty_chars(attributes[columns.index(ROW_CLASSNAME)].text)

        course = Course.where(initials: initial).first_or_initialize
        course.academic_unity = unity
        course.name = name
        course.credits = credits
        course.information = get_course_info(course, year, period)
        course.save!


        # Section
        section_number = remove_shitty_chars(attributes[columns.index(ROW_SECTION)].text)
        vacancy = remove_shitty_chars(attributes[columns.index(ROW_VAC_DISP)].text)

        section = Section.where(course: course, number: section_number, year: year, period: period).first_or_initialize
        section.vacancy = vacancy
        section.save!


        # Teachers
        teachers_attr = attributes[columns.index(ROW_TEACHERS)].xpath('font')
        teachers_attr.children.each do |t|
          if t.text?
            t_name = remove_shitty_chars(t.text)
            if t_name.downcase == 'sin profesores' || t_name.downcase == 'por definir'
              log course.name.concat(' has no teachers.')
            else
              teacher = Teacher.eager_load(:academic_unities, :sections).where(name: t_name).first_or_initialize
              unless teacher.avatar.exists?
                profile_pic = get_teacher_pic(teacher, course, year, period)
                teacher.avatar = profile_pic

                profile_pic.close
                profile_pic.unlink
              end
              teacher.academic_unities << unity unless teacher.academic_unities.include?(unity)
              teacher.sections << section unless teacher.sections.include?(section)
              teacher.save!
            end
          end
        end


        # Schedule Items
        schedules = attributes[columns.index(ROW_SCHEDULE)].xpath('font').children
        module_types = attributes[columns.index(ROW_ACTIVITY_TYPE)].xpath('font').children
        classrooms = attributes[columns.index(ROW_CLASSROOMS)].xpath('font').children
        campus_name = remove_shitty_chars(attributes[columns.index(ROW_CAMPUS)].xpath('font').children.first.text) rescue ''

        for i in 0..module_types.length-1 do
          if module_types[i].text?
            class_type = remove_shitty_chars(module_types[i].text) rescue ''
            module_block = remove_shitty_chars(schedules[i].text) rescue ''
            module_place = remove_shitty_chars(classrooms[i].text) rescue ''

            log '-------------'
            log 'Vars:'
            log 'Unity: '.concat(unity.short_name)
            log 'Course: '.concat(section.identifier)
            log 'Class type: '.concat(class_type)
            log 'Module blocks: '.concat(module_block)
            log 'Campus: '.concat(campus_name)

            c_array = module_place.split(': ')
            if c_array.size == 2
              module_place = remove_shitty_chars(c_array[1])
            end

            log 'Place: '.concat(module_place)
            log '-------------'

            schedule_items = []
            if module_block.present? && regex(module_block)
              matches = ScheduleModule.modules_for_loader(Organization.find_by_abbreviation('UC'), module_block)
              matches.each do |schedule_module|

                schedule_items << ScheduleItem.new(
                class_type: class_type,
                section: section,
                place_name: module_place,
                campus_name: campus_name,
                schedule_module: schedule_module
                )
              end
            else
              schedule_items << ScheduleItem.new(
              class_type: class_type,
              section: section,
              place_name: module_place,
              campus_name: campus_name,
              schedule_module: nil
              )
            end
            ScheduleItem.import schedule_items
            schedule_items.each do |item|
              puts "#{section.identifier} \t|\t #{item.class_type} \t|\t #{(item.schedule_module) ? item.schedule_module.initials : '-'} \t|\t #{item.place_name} @ #{item.campus_name}"
            end
          end
        end
      end
    end
  end

  def self.get_attributes_row(doc)
    # Let's find the main table
    columns = nil
    table = nil
    [9 ,11].each do |tr_row| # TODO: improve matching
      begin
        table = doc.xpath("//body/table/tr[#{tr_row}]/td/table") # College: /html/body/table/tbody/tr[11]/td/table/tbody
        next if table.blank?

        headers = table.xpath('tr[1]/td')
        columns = headers.map(&:text)
      rescue
        log "no table on row #{tr_row}"
      end

      break unless columns.blank?
    end

    table = table.xpath('tr')
    table = table[1..table.size] # Remove table titles
    table.each do |cell|
      attributes = cell.xpath('td')
      yield(attributes, columns)
    end
  end
end
