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

@sj = Campus.create( abbreviation: 'SJ',
                     name: 'San Joaquín',
                     organization: @uc,
                     address: 'Av. Vicuña Mackenna 4860, Macul, Chile',
                     url: nil,
                     facebook: nil,
                     twitter: nil,
                     phone: nil,
                     email: nil,
                     information: 'Incorporado al patrimonio de la Universidad en 1891, legado de Honoria Gandarillas de la chacra Macul (primera hijuela de Macul e Hijuela San Joaquín) con 82 hás., el actual campus San Joaquín de la Universidad comenzó su implementación como ciudad universitaria en los sesenta y continúa en desarrollo.',
                     localization: Place.new( identifier: 'CAMPUS SJ',
                                              name: "Campus San Joaquín",
                                              area: @uc,
                                              latitude: -33.498386,
                                              longitude: -70.611716,
                                              zoom: 14.6,
                                              angle: 90,
                                              tilt: 30,
                                              floor: 1
                     )
)

@cc = Campus.create( abbreviation: 'CC',
                     name: 'Casa Central',
                     organization: @uc,
                     address: 'Av. Alameda 340, Santiago, Chile',
                     url: nil,
                     facebook: nil,
                     twitter: nil,
                     phone: nil,
                     email: nil,
                     information: 'El edificio principal y fundacional de la Universidad se terminó de construir en 1912. Proyecto original de Ignacio Cremonesi, fue concluido por su discípulo Emilio Jecquier. Por su magnificencia fue denominado Palacio Universitario y desde entonces acoge a la Dirección Superior y a varias facultades.',
                     localization: Place.new( identifier: 'CAMPUS CC',
                                              name: "Campus Casa Central",
                                              area: @uc,
                                              latitude: -33.441543,
                                              longitude: -70.640407,
                                              zoom: 17,
                                              angle: 5,
                                              tilt: 0,
                                              floor: 1
                     )
)

@lc = Campus.create( abbreviation: 'LC',
                     name: 'Lo Contador',
                     organization: @uc,
                     address: 'El Comendador 1916, Providencia, Chile',
                     url: nil,
                     facebook: nil,
                     twitter: nil,
                     phone: nil,
                     email: nil,
                     information: 'Antigua hacienda del siglo XVIII contemporánea a grandes obras en la ciudad de Santiago como el puente de Calicanto. Su casona es Monumento Nacional y parte del patrimonio arquitectónico de Santiago. Desde 1958 es sede de la Facultad de Arquitectura, Diseño y Estudios Urbanos de la Universidad.',
                     localization: Place.new( identifier: 'CAMPUS CONTADOR',
                                              name: "Campus Lo Contador",
                                              area: @uc,
                                              latitude: -33.419247,
                                              longitude: -70.617861,
                                              zoom: 16.5,
                                              angle: 150,
                                              tilt: 30,
                                              floor: 1
                     )
)

@co = Campus.create( abbreviation: 'OR',
                     name: 'Campus Oriente',
                     organization: @uc,
                     address: 'Av. Jaime Guzmán Errázuriz 3300, Providencia, Chile',
                     url: nil,
                     facebook: nil,
                     twitter: nil,
                     phone: nil,
                     email: nil,
                     information: 'Construido en 1934 y adquirido por la Universidad a la Congregación de las Monjas Francesas en la década de los setenta (1971), acoge a las carreras de la Facultad de Artes y al Instituto de Estética. ',
                     localization: Place.new( identifier: 'CAMPUS ORIENTE',
                                              name: "Campus Oriente",
                                              area: @uc,
                                              latitude: -33.445714,
                                              longitude: -70.593499,
                                              zoom: 16,
                                              angle: 0,
                                              tilt: 0,
                                              floor: 1
                     )
)

@vr = Campus.create( abbreviation: 'VR',
                     name: 'Villarica',
                     organization: @uc,
                     address: 'Bernardo O''Higgins 501, Villarrica, Chile',
                     url: nil,
                     facebook: nil,
                     twitter: nil,
                     phone: nil,
                     email: nil,
                     information: 'Es un edificio de moderna construcción (2001) donde se desarrolla casi toda la actividad relacionada con los programas académicos, dirección y administración.',
                     localization: Place.new( identifier: 'CAMPUS VILLARICA',
                                              name: "Campus Villarica",
                                              area: @uc,
                                              latitude: -39.277704,
                                              longitude: -72.225615,
                                              zoom: 16,
                                              angle: 0,
                                              tilt: 0,
                                              floor: 1
                     )
)

@ex = Campus.create( abbreviation: 'EX',
                     name: 'Campus Externo',
                     organization: @uc,
                     address: nil,
                     url: nil,
                     facebook: nil,
                     twitter: nil,
                     phone: nil,
                     email: nil,
                     information: '',
                     localization: nil
)

Campus.all.each do |c|
  puts('Created campus: ' +c.name)
end

Campus.reindex