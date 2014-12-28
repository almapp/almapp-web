puts('Creating campuses')

# == Schema Information
#
# Table name: campuses
#
#  id              :integer          not null, primary key
#  abbreviation    :string           not null
#  name            :string           not null
#  organization :integer          not null
#  address         :string
#  url             :string
#  facebook        :string
#  twitter         :string
#  phone           :string
#  email           :string
#  information     :text
#  place_id        :integer
#  created_at      :datetime
#  updated_at      :datetime

# Table name: places
#
#  id          :integer          not null, primary key
#  identifier  :string           not null
#  name        :string
#  service     :boolean          default("false"), not null
#  area_id     :integer          not null
#  area_type   :string           not null
#  information :text             default("")
#  zoom        :float            default("0.0")
#  angle       :float            default("0.0")
#  tilt        :float            default("0.0")
#  latitude    :float            default("0.0")
#  longitude   :float            default("0.0")
#  floor       :string

### Template:
# Campus.create( abbreviation: '',
#                name: '',
#                organization: @uc,
#                address: '',
#                url: nil,
#                facebook: nil,
#                twitter: nil,
#                phone: nil,
#                email: nil,
#                information: nil,
#                localization: Place.new( identifier: 'CAMPUS SJ',
#                                         name: "Campus San Joaquín",
#                                         area: @uc,
#                                         latitude: -33.498386,
#                                         longitude: -70.611716,
#                                         zoom: 17,
#                                         angle: 90,
#                                         tilt: 30,
#                                         floor: 1
#                                         )
# )

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
                                              zoom: 17,
                                              angle: 90,
                                              tilt: 30,
                                              floor: 1
                     )
)

@cc = Campus.create( abbreviation: 'CC',
                     name: 'Casa Central',
                     organization_id: @uc.id,
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
                     organization_id: @uc.id,
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
                                              zoom: 0,
                                              angle: 150,
                                              tilt: 30,
                                              floor: 1
                     )
)

@co = Campus.create( abbreviation: 'OR',
                     name: 'Campus Oriente',
                     organization_id: @uc.id,
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
                                              zoom: 0,
                                              angle: 0,
                                              tilt: 0,
                                              floor: 1
                     )
)

@vr = Campus.create( abbreviation: 'VR',
                     name: 'Villarica',
                     organization_id: @uc.id,
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
                                              zoom: 0,
                                              angle: 0,
                                              tilt: 0,
                                              floor: 1
                     )
)

@ex = Campus.create( abbreviation: 'EX',
                     name: 'Campus Externo',
                     organization_id: @uc.id,
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