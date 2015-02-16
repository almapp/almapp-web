puts('Creating campuses')

# == Schema Information
#
# Table name: campuses
#
#  id              :integer          not null, primary key
#  abbreviation    :string(255)
#  short_name      :string(255)
#  name            :string(255)
#  organization_id :integer          not null
#  address         :string(255)
#  url             :string(255)
#  facebook        :string(255)
#  twitter         :string(255)
#  phone           :string(255)
#  email           :string(255)
#  information     :text             default("")
#  place_id        :integer
#  created_at      :datetime
#  updated_at      :datetime
#
place = Place.where(identifier: 'CAMPUS SJ').first_or_initialize
place.name = "Campus San Joaquín"
place.area = @uc
place.latitude = -33.498386
place.longitude = -70.611716
place.zoom = 14.6
place.angle = 90
place.tilt = 30
place.floor = 1

place.save!
place.category_list = 'area, campus'

@sj = Campus.where(abbreviation: 'SJ').first_or_initialize
@sj.name = 'San Joaquín'
@sj.organization = @uc
@sj.address = 'Av. Vicuña Mackenna 4860, Macul, Chile'
@sj.url = nil
@sj.facebook = nil
@sj.twitter = nil
@sj.phone = nil
@sj.email = nil
@sj.information = 'Incorporado al patrimonio de la Universidad en 1891, legado de Honoria Gandarillas de la chacra Macul (primera hijuela de Macul e Hijuela San Joaquín) con 82 hás., el actual campus San Joaquín de la Universidad comenzó su implementación como ciudad universitaria en los sesenta y continúa en desarrollo.'
@sj.localization = place
@sj.save!

#-------------------------------------------------

place = Place.where(identifier: 'CAMPUS CC').first_or_initialize
place.name = "Campus Casa Central"
place.area = @uc
place.latitude = -33.441543
place.longitude = -70.640407
place.zoom = 17
place.angle = 5
place.tilt = 0
place.floor = 1

place.save!
place.category_list = 'area, campus'

@cc = Campus.where(abbreviation: 'CC').first_or_initialize
@cc.name = 'Casa Central'
@cc.organization = @uc
@cc.address = 'Av. Alameda 340, Santiago, Chile'
@cc.url = nil
@cc.facebook = nil
@cc.twitter = nil
@cc.phone = nil
@cc.email = nil
@cc.information = 'El edificio principal y fundacional de la Universidad se terminó de construir en 1912. Proyecto original de Ignacio Cremonesi, fue concluido por su discípulo Emilio Jecquier. Por su magnificencia fue denominado Palacio Universitario y desde entonces acoge a la Dirección Superior y a varias facultades.'
@cc.localization = place
@cc.save!

#-------------------------------------------------

place = Place.where(identifier: 'CAMPUS LC').first_or_initialize
place.name = "Campus Lo Contador"
place.area = @uc
place.latitude = -33.419247
place.longitude = -70.617861
place.zoom = 16.5
place.angle = 150
place.tilt = 30
place.floor = 1

place.save!
place.category_list = 'area, campus'

@lc = Campus.where(abbreviation: 'LC').first_or_initialize
@lc.name = 'Lo Contador'
@lc.organization = @uc
@lc.address = 'El Comendador 1916, Providencia, Chile'
@lc.url = nil
@lc.facebook = nil
@lc.twitter = nil
@lc.phone = nil
@lc.email = nil
@lc.information = 'Antigua hacienda del siglo XVIII contemporánea a grandes obras en la ciudad de Santiago como el puente de Calicanto. Su casona es Monumento Nacional y parte del patrimonio arquitectónico de Santiago. Desde 1958 es sede de la Facultad de Arquitectura, Diseño y Estudios Urbanos de la Universidad.'
@lc.localization = place
@lc.save!

#-------------------------------------------------

place = Place.where(identifier: 'CAMPUS OR').first_or_initialize
place.name = "Campus Oriente"
place.area = @uc
place.latitude = -33.445714
place.longitude = -70.593499
place.zoom = 16
place.angle = 0
place.tilt = 0
place.floor = 1

place.save!
place.category_list = 'area, campus'

@co = Campus.where(abbreviation: 'OR').first_or_initialize
@co.name = 'Campus Oriente'
@co.organization = @uc
@co.address = 'Av. Jaime Guzmán Errázuriz 3300, Providencia, Chile'
@co.url = nil
@co.facebook = nil
@co.twitter = nil
@co.phone = nil
@co.email = nil
@co.information = 'Construido en 1934 y adquirido por la Universidad a la Congregación de las Monjas Francesas en la década de los setenta (1971), acoge a las carreras de la Facultad de Artes y al Instituto de Estética. '
@co.localization = place
@co.save!

#-------------------------------------------------

place = Place.where(identifier: 'CAMPUS VR').first_or_initialize
place.name = "Campus Villarica"
place.area = @uc
place.latitude = -39.277704
place.longitude = -72.225615
place.zoom = 16
place.angle = 0
place.tilt = 0
place.floor = 1

place.save!
place.category_list = 'area, campus'

@vr = Campus.where(abbreviation: 'VR').first_or_initialize
@vr.name = 'Villarica'
@vr.organization = @uc
@vr.address = 'Bernardo O''Higgins 501, Villarrica, Chile'
@vr.url = nil
@vr.facebook = nil
@vr.twitter = nil
@vr.phone = nil
@vr.email = nil
@vr.information = 'Es un edificio de moderna construcción (2001) donde se desarrolla casi toda la actividad relacionada con los programas académicos, dirección y administración.'
@vr.localization = place
@vr.save!

#-------------------------------------------------

@ex = Campus.where(abbreviation: 'EX').first_or_initialize
@ex.name = 'Campus Externo'
@ex.organization = @uc
@ex.address = nil
@ex.url = nil
@ex.facebook = nil
@ex.twitter = nil
@ex.phone = nil
@ex.email = nil
@ex.information = ''
@ex.localization = nil
@ex.save!

puts("Created #{Campus.count} #{Campus.to_s.pluralize.downcase}")

