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
  pato = User.create(email: 'pelopez2@uc.cl', organization: Organization.first, password:'randompassword', password_confirmation:'randompassword', provider:'email')
  consuelo = User.create(email: 'cicontreras1@uc.cl', organization: Organization.first, password:'randompassword', password_confirmation:'randompassword', provider:'email')
  consuelo.send_friend_request(pato)
  pato.send_friend_request(consuelo)

  event = Event.create!(title:'Example Event', user:pato, to_date:2.days.from_now, host: Campus.first)

  Post.create!(user: pato, content:'short post', target: Campus.first )
  Post.create!(user: pato, content:'Lorem ipsum ad his scripta blandit partiendo, eum fastidii accumsan euripidis in, eum liber hendrerit an. Qui ut wisi vocibus suscipiantur, quo dicit ridens inciderint id. ', target: Campus.first.faculties.first )
  Post.create!(user: consuelo, content:'Quo mundi lobortis reformidans eu, legimus senserit definiebas an eos. Eu sit tincidunt incorrupte definitionem, vis mutat affert percipit cu, eirmod consectetuer signiferumque eu per. In usu latine equidem dolores. Quo no falli viris intellegam, ut fugit veritus placerat per.', target: Campus.first.faculties.first.academic_unities.first)
  Post.create!(user: consuelo, content:'Lorem ipsum ad his scripta blandit partiendo', target: Campus.first, localization:Place.find(40))
  Post.create!(user: consuelo, content:'Ius id vidit volumus mandamus, vide veritus democritum te nec', target: Campus.first.buildings.first, event: event)

  event.participants << consuelo
  event.participants << pato
  event.save!

end