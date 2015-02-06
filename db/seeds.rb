# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


testing = true

def load_campuses
  @sj ||= Campus.find_by_abbreviation('SJ')
  @cc ||= Campus.find_by_abbreviation('CC')
  @lc ||= Campus.find_by_abbreviation('LC')
  @or ||= Campus.find_by_abbreviation('OR')
  @vr ||= Campus.find_by_abbreviation('VR')
  @ex ||= Campus.find_by_abbreviation('EX')
end

# Loads from "seeds" folder sorting by number prefix
Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each { |seed| load seed }

if testing
  puts 'Creating testing resources'

  pato = User.create(name:'Patricio López', email: 'pelopez2@uc.cl', organization: Organization.first, password:'randompassword', password_confirmation:'randompassword')
  consuelo = User.create(name: 'Consuelo Contreras', email: 'cicontreras1@uc.cl', organization: Organization.first, password:'randompassword', password_confirmation:'randompassword')
  consuelo.send_friend_request(pato)
  pato.send_friend_request(consuelo)

  testguy = User.create(name:'Lorena Ipsum', email: 'lorem1@uc.cl', organization: Organization.first, password:'randompassword', password_confirmation:'randompassword')

  pato.admin = true
  pato.careers << Career.create(name: 'Ingeniería Civil', academic_unity: AcademicUnity.find_by_short_name('Ingeniería'))
  pato.save!

  consuelo.careers << Career.create(name: 'Arquitectura', academic_unity: AcademicUnity.find_by_short_name('Arquitectura'))
  consuelo.save!

  api_key = ApiKey.create!(client: 'Almapp iOS Development', contact_name: pato.name, contact_email: pato.email)
  api_key.key = 'DevelopmentKey'
  api_key.save!

  event = Event.create!(title:'Example Event', user:pato, to_date:2.days.from_now, host: Campus.first)

  Post.create!(user: pato, content:'short post', target: Campus.first )
  Post.create!(user: pato, content:'Lorem ipsum ad his scripta blandit partiendo, eum fastidii accumsan euripidis in, eum liber hendrerit an. Qui ut wisi vocibus suscipiantur, quo dicit ridens inciderint id. ', target: Campus.first.faculties.first )
  Post.create!(user: consuelo, content:'Quo mundi lobortis reformidans eu, legimus senserit definiebas an eos. Eu sit tincidunt incorrupte definitionem, vis mutat affert percipit cu, eirmod consectetuer signiferumque eu per. In usu latine equidem dolores. Quo no falli viris intellegam, ut fugit veritus placerat per.', target: Campus.first.faculties.first.academic_unities.first)
  Post.create!(user: consuelo, content:'Lorem ipsum ad his scripta blandit partiendo', target: Campus.first, localization:Place.find_by_identifier('ENF_219'))
  Post.create!(user: consuelo, content:'Ius id vidit volumus mandamus, vide veritus democritum te nec', target: Campus.first.buildings.first, event: event)

  contents = ['Lorem ipsum ad his scripta blandit partiendo, eum fastidii accumsan euripidis in',
              'Quo mundi lobortis reformidans eu, legimus senserit definiebas an eos.',
              'Quo mundi lobortis reformidans eu, legimus senserit definiebas an eos. Eu sit tincidunt incorrupte definitionem, vis mutat affert percipit cu, eirmod consectetuer signiferumque eu per. In usu latine equidem dolores. Quo no falli viris intellegam, ut fugit veritus placerat per.',
              'Ius id vidit volumus mandamus, vide veritus democritum te nec',
              'Lorem'
  ]
  number_of_generated_posts = 100
  number_of_generated_posts.times do
    user = rand(0 .. 1) == 0 ? pato : consuelo
    place = Place.find(rand(1 .. Place.count - 1)) if rand(0 .. 1) == 1
    target = [Organization, Campus, Faculty, AcademicUnity, Building]
    target = target[rand(target.size)].first
    content = contents[rand(contents.size)]
    Post.create!(user: user, target: target, localization:place, content:content)
  end

  event.participants << consuelo
  event.participants << pato
  event.save!

  Post.first.add_like_by(consuelo)
  Campus.first.add_like_by(pato)

  group = Group.create!(name: 'Example Group', email:'example@example.ex', information:'Lorem ipsum ad his scripta blandit partiendo.', url:'http://www.google.cl')
  group.subscribers << pato
  group.subscribers << consuelo
  group.save!

  ActiveRecord::Base.logger.level = 1
  u = UCCoursesLoader.new
  u.load_courses_for(u.test_relation, 2015,1)
  ActiveRecord::Base.logger.level = 0

  pato.sections << %w(ICH1104-2 ICS2123-4 IIC1253-1 IIC2233-1).map { |section_schedule_identifier| Section.find_by_identifier(section_schedule_identifier, 2015, 1) }
  pato.save!

  puts "Development Api-key: #{api_key.key}"
end