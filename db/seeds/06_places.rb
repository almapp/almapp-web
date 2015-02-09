puts('Creating places')

# == Schema Information
#
# Table name: places
#
#  id          :integer          not null, primary key
#  identifier  :string(255)      not null
#  name        :string(255)
#  service     :boolean          default(FALSE), not null
#  area_id     :integer          not null
#  area_type   :string(255)      not null
#  information :text             default("")
#  zoom        :float            default(0.0)
#  angle       :float            default(0.0)
#  tilt        :float            default(0.0)
#  latitude    :float            default(0.0)
#  longitude   :float            default(0.0)
#  floor       :string(255)
#  newd_at  :datetime
#  updated_at  :datetime
#

# Categories:
# ---------

# area
# classroom

# bath
# trash
# park_bicycle
# park_car
# study
# food_lunch
# food_stand
# food_machine
# printer
# computers
# photocopy
# cash_machine
# bank
# library
# other

place = Place.new(
    identifier: 'ENF_117',
    name: '117',
    area: @a_enf,
    latitude: -33.499013,
    longitude: -70.613039,
    floor: '1',
    information: 'Asuntos Estudiantiles',
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'other'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'ENF_118',
    name: '118',
    area: @a_enf,
    latitude: -33.498915,
    longitude: -70.613041,
    floor: '1',
    information: 'Centro de Simulación',
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'ENF_119',
    name: '119',
    area: @a_enf,
    latitude: -33.498937,
    longitude: -70.613039,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'ENF_120',
    name: '120',
    area: @a_enf,
    latitude: -33.499013,
    longitude: -70.613039,
    floor: '1',
    information: 'Servicios Generales',
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'other'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'ENF_121',
    name: '121',
    area: @a_enf,
    latitude: -33.499013,
    longitude: -70.613039,
    floor: '1',
    information: 'Sala de Alumnos',
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'other'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: '209',
    name: '209',
    area: @a_eco,
    latitude: -33.497114,
    longitude: -70.611485,
    floor: '2?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'comercial_211',
    name: '211',
    area: @a_eco,
    latitude: -33.497119,
    longitude: -70.611482,
    floor: '2?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: '218',
    name: '218',
    area: @a_eco,
    latitude: -33.496961,
    longitude: -70.611022,
    floor: '2?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'ENF_219',
    name: '219',
    area: @a_enf,
    latitude: -33.498915,
    longitude: -70.613092,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: '220',
    name: '220',
    area: @a_enf,
    latitude: -33.498912,
    longitude: -70.613125,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'comercial_220',
    name: '220',
    area: @a_eco,
    latitude: -33.496966,
    longitude: -70.611006,
    floor: '2?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'ENF_221',
    name: '221',
    area: @a_enf,
    latitude: -33.498901,
    longitude: -70.613162,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'ENF_222',
    name: '222',
    area: @a_enf,
    latitude: -33.499004,
    longitude: -70.613127,
    floor: '2',
    information: 'Auditorio',
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: '225',
    name: '225',
    area: @a_eco,
    latitude: -33.497020,
    longitude: -70.610998,
    floor: '2?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'A-SALA1',
    name: 'A-SALA1',
    area: @a_arq,
    latitude: -33.419557,
    longitude: -70.618506,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'A-SALA17',
    name: 'A-SALA17',
    area: @lc,
    latitude: 0.0,
    longitude: 0.0,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'A-SALA2',
    name: 'A-SALA2',
    area: @a_arq,
    latitude: -33.419566,
    longitude: -70.618533,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'A-SALA3',
    name: 'A-SALA3',
    area: @a_arq,
    latitude: -33.419544,
    longitude: -70.618509,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'A-SALA4',
    name: 'A-SALA4',
    area: @a_arq,
    latitude: -33.419535,
    longitude: -70.618498,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'A1',
    name: 'A1',
    area: @a_ing,
    latitude: -33.500288,
    longitude: -70.612476,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'A2',
    name: 'A2',
    area: @a_ing,
    latitude: -33.500288,
    longitude: -70.612476,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'A3',
    name: 'A3',
    area: @a_ing,
    latitude: -33.500141,
    longitude: -70.612511,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'A4',
    name: 'A4',
    area: @a_ing,
    latitude: -33.500141,
    longitude: -70.612511,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'A5',
    name: 'A5',
    area: @a_ing,
    latitude: -33.499965,
    longitude: -70.612540,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'A6',
    name: 'A6',
    area: @a_ing,
    latitude: -33.499965,
    longitude: -70.612540,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'A7',
    name: 'A7',
    area: @a_ing,
    latitude: -33.499809,
    longitude: -70.612569,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'A8',
    name: 'A8',
    area: @a_ing,
    latitude: -33.499703,
    longitude: -70.612068,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'AG1',
    name: 'AG1',
    area: @a_agro,
    latitude: -33.497122,
    longitude: -70.609658,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'AG2',
    name: 'AG2',
    area: @a_agro,
    latitude: -33.497116,
    longitude: -70.609519,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'AG3',
    name: 'AG3',
    area: @a_agro,
    latitude: -33.497106,
    longitude: -70.609405,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'AG4',
    name: 'AG4',
    area: @a_agro,
    latitude: -33.496900,
    longitude: -70.609659,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'AG5',
    name: 'AG5',
    area: @a_agro,
    latitude: -33.496895,
    longitude: -70.609568,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'AG6',
    name: 'AG6',
    area: @a_agro,
    latitude: -33.496885,
    longitude: -70.609456,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'AGCV',
    name: 'AGCV',
    area: @a_agro,
    latitude: -33.496999,
    longitude: -70.609272,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'AL1',
    name: 'AL1',
    area: @al,
    latitude: -33.497508,
    longitude: -70.609004,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'AL2',
    name: 'AL2',
    area: @al,
    latitude: -33.497569,
    longitude: -70.608890,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'AL3',
    name: 'AL3',
    area: @al,
    latitude: -33.497710,
    longitude: -70.608824,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'AL4',
    name: 'AL4',
    area: @al,
    latitude: -33.497820,
    longitude: -70.608866,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'almacen_uc_cc',
    name: 'ALMACÉN UC',
    area: @cc,
    latitude: -33.440890,
    longitude: -70.640925,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'other'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'almacenuc_sociales',
    name: 'ALMACÉN UC',
    area: @sj,
    latitude: -33.498331,
    longitude: -70.610272,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'other'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'ALT',
    name: 'ALT',
    area: @al,
    latitude: -33.497917,
    longitude: -70.608998,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'AM1',
    name: 'AM1',
    area: @al,
    latitude: -33.498054,
    longitude: -70.609414,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'AM2',
    name: 'AM2',
    area: @al,
    latitude: -33.498102,
    longitude: -70.609270,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'AM3',
    name: 'AM3',
    area: @al,
    latitude: -33.498032,
    longitude: -70.609080,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'administracion_cc',
    name: 'Administración',
    area: @cc,
    latitude: -33.440929,
    longitude: -70.641053,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'other'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'S. ALFERO',
    name: 'Alfero',
    area: @lc,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'computers, printer'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'almuerzo13',
    name: 'Almuerzo',
    area: @lc,
    latitude: -33.419581,
    longitude: -70.617635,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'food_lunch'
place.save!


#-------------------------------------------------

place = Place.new(
    identifier: 'Auditorio_SA',
    name: 'Auditorio',
    area: @a_ing, #Check
    latitude: -33.499427,
    longitude: -70.615001,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'auditorio_Y',
    name: 'Auditorio',
    area: @a_ing,
    latitude: -33.499094,
    longitude: -70.612009,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'auditorio_acg',
    name: 'Auditorio',
    area: @a_agro, #check
    latitude: -33.497129,
    longitude: -70.609794,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'auditorio_cc',
    name: 'Auditorio',
    area: @a_cc,
    latitude: -33.498870,
    longitude: -70.613985,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'auditorio_college',
    name: 'Auditorio',
    area: @a_college,
    latitude: -33.500553,
    longitude: -70.611173,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'auditorio_h_1',
    name: 'Auditorio',
    area: @historia,
    latitude: -33.497383,
    longitude: -70.613498,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'auditorio_h_2',
    name: 'Auditorio',
    area: @historia,
    latitude: -33.496731,
    longitude: -70.614014,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'auditorio_h_fil',
    name: 'Auditorio',
    area: @a_fil,
    latitude: -33.496929,
    longitude: -70.614026,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'AUD_10',
    name: 'Auditorio 10',
    area: @cc,
    latitude: -33.440897,
    longitude: -70.640708,
    floor: '1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: '102',
    name: 'Auditorio 102',
    area: @a_eco,
    latitude: -33.496987,
    longitude: -70.611897,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: '103',
    name: 'Auditorio 103',
    area: @a_eco,
    latitude: -33.497118,
    longitude: -70.611773,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: '104',
    name: 'Auditorio 104',
    area: @a_eco,
    latitude: -33.496974,
    longitude: -70.611846,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: '105',
    name: 'Auditorio 105',
    area: @a_eco,
    latitude: -33.497096,
    longitude: -70.611623,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: '106',
    name: 'Auditorio 106',
    area: @a_eco,
    latitude: -33.496965,
    longitude: -70.611680,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: '107',
    name: 'Auditorio 107',
    area: @a_eco,
    latitude: -33.497096,
    longitude: -70.611588,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: '108',
    name: 'Auditorio 108',
    area: @a_eco,
    latitude: -33.496957,
    longitude: -70.611376,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: '109',
    name: 'Auditorio 109',
    area: @a_eco,
    latitude: -33.497087,
    longitude: -70.611487,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: '110',
    name: 'Auditorio 110',
    area: @a_eco,
    latitude: -33.496979,
    longitude: -70.611219,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: '111',
    name: 'Auditorio 111',
    area: @a_eco,
    latitude: -33.497105,
    longitude: -70.611338,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: '112',
    name: 'Auditorio 112',
    area: @a_eco,
    latitude: -33.496928,
    longitude: -70.611144,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: '113',
    name: 'Auditorio 113',
    area: @a_eco,
    latitude: -33.497094,
    longitude: -70.611230,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'AUD_21',
    name: 'Auditorio 21',
    area: @cc,
    latitude: -33.441155,
    longitude: -70.640779,
    floor: '2?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'AUD_24',
    name: 'Auditorio 24',
    area: @cc,
    latitude: -33.440707,
    longitude: -70.640166,
    floor: '2?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'ASILVA',
    name: 'Auditorio Alejandro Silva',
    area: @cc,
    latitude: -33.441262,
    longitude: -70.640143,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'CLARO',
    name: 'Auditorio Claro y Cia.',
    area: @cc,
    latitude: -33.441267,
    longitude: -70.640054,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'auditorio_joaco_luco',
    name: 'Auditorio Dr. Joaquín Luco',
    area: @cc,
    latitude: -33.441573,
    longitude: -70.640652,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'FD-101',
    name: 'Auditorio FD101',
    area: @cc,
    latitude: -33.441060,
    longitude: -70.640345,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'auditorio_luksic',
    name: 'Auditorio Luksic',
    area: @sj,
    latitude: -33.499906,
    longitude: -70.614197,
    floor: '-2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'auditorio_astro',
    name: 'Auditorio Ninoslav Bralic',
    area: @sj,
    latitude: -33.499841,
    longitude: -70.611156,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'AUD_N',
    name: 'Auditorio Norte',
    area: @lc,
    latitude: -33.419047,
    longitude: -70.617905,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'AUD_S',
    name: 'Auditorio Sur',
    area: @lc,
    latitude: -33.419085,
    longitude: -70.617850,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'auditorio_qim',
    name: 'Auditorio Victor Pillón',
    area: @sj,
    latitude: -33.499187,
    longitude: -70.610875,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'AULAMAGNA',
    name: 'Aula Magna',
    area: @al,
    latitude: -33.497807,
    longitude: -70.609146,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'aulamagna_cc',
    name: 'Aula Magna',
    area: @cc,
    latitude: -33.440946,
    longitude: -70.640001,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'aulamagna_comercial',
    name: 'Aula Magna',
    area: @al,
    latitude: -33.497077,
    longitude: -70.611969,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'B-101',
    name: 'B-101',
    area: @bio,
    latitude: -33.441678,
    longitude: -70.639548,
    floor: '1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'B-102',
    name: 'B-102',
    area: @bio,
    latitude: -33.441571,
    longitude: -70.639651,
    floor: '1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'B-103',
    name: 'B-103',
    area: @bio,
    latitude: -33.441528,
    longitude: -70.639691,
    floor: '1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'B11',
    name: 'B11',
    area: @a_ing,
    latitude: -33.500466,
    longitude: -70.613094,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'B12',
    name: 'B12',
    area: @a_ing,
    latitude: -33.500427,
    longitude: -70.613135,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'B13',
    name: 'B13',
    area: @a_ing,
    latitude: -33.500400,
    longitude: -70.613138,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'B14',
    name: 'B14',
    area: @a_ing,
    latitude: -33.500397,
    longitude: -70.612830,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'B15',
    name: 'B15',
    area: @a_ing,
    latitude: -33.500397,
    longitude: -70.612720,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'B16',
    name: 'B16',
    area: @a_ing,
    latitude: -33.500397,
    longitude: -70.612629,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'B17',
    name: 'B17',
    area: @a_ing,
    latitude: -33.500317,
    longitude: -70.612466,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'B18',
    name: 'B18',
    area: @a_ing,
    latitude: -33.500386,
    longitude: -70.612463,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'B-201',
    name: 'B-201',
    area: @bio,
    latitude: -33.441733,
    longitude: -70.639850,
    floor: '2?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'B-202',
    name: 'B-202',
    area: @bio,
    latitude: -33.441733,
    longitude: -70.639850,
    floor: '2?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'B-203',
    name: 'B-203',
    area: @bio,
    latitude: -33.441733,
    longitude: -70.639850,
    floor: '2?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'B21',
    name: 'B21',
    area: @a_ing,
    latitude: -33.500397,
    longitude: -70.612830,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'B22',
    name: 'B22',
    area: @a_ing,
    latitude: -33.500397,
    longitude: -70.612720,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'B23',
    name: 'B23',
    area: @a_ing,
    latitude: -33.500397,
    longitude: -70.612629,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'B24',
    name: 'B24',
    area: @a_ing,
    latitude: -33.500317,
    longitude: -70.612466,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'B25',
    name: 'B25',
    area: @a_ing,
    latitude: -33.500386,
    longitude: -70.612463,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'BC21',
    name: 'BC21',
    area: @a_ing,
    latitude: -33.500493,
    longitude: -70.613091,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'BC22',
    name: 'BC22',
    area: @a_ing,
    latitude: -33.500352,
    longitude: -70.613158,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'BC23',
    name: 'BC23',
    area: @a_ing,
    latitude: -33.500424,
    longitude: -70.613148,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'BC24',
    name: 'BC24',
    area: @a_ing,
    latitude: -33.500495,
    longitude: -70.613105,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'BC25',
    name: 'BC25',
    area: @a_ing,
    latitude: -33.500477,
    longitude: -70.613036,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'BC26',
    name: 'BC26',
    area: @a_ing,
    latitude: 0.0,
    longitude: 0.0,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'banco2',
    name: 'Banco Corpbanca',
    area: @sj,
    latitude: -33.498158,
    longitude: -70.610165,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'bank'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'banco1',
    name: 'Banco Santander',
    area: @sj,
    latitude: -33.498113,
    longitude: -70.613188,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'bank'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'reciclaje1',
    name: 'Basurero de reciclaje',
    area: @sj,
    latitude: -33.498941,
    longitude: -70.614578,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'reciclaje10',
    name: 'Basurero de reciclaje',
    area: @sj,
    latitude: -33.497743,
    longitude: -70.610668,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'reciclaje11',
    name: 'Basurero de reciclaje',
    area: @sj,
    latitude: -33.497524,
    longitude: -70.610201,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'reciclaje12',
    name: 'Basurero de reciclaje',
    area: @sj,
    latitude: -33.497152,
    longitude: -70.609128,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'reciclaje13',
    name: 'Basurero de reciclaje',
    area: @sj,
    latitude: -33.496848,
    longitude: -70.609203,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'reciclaje14',
    name: 'Basurero de reciclaje',
    area: @sj,
    latitude: -33.496736,
    longitude: -70.609209,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'reciclaje15',
    name: 'Basurero de reciclaje',
    area: @sj,
    latitude: -33.499022,
    longitude: -70.610890,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'reciclaje16',
    name: 'Basurero de reciclaje',
    area: @sj,
    latitude: -33.499423,
    longitude: -70.610082,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'reciclaje18',
    name: 'Basurero de reciclaje',
    area: @sj,
    latitude: -33.499857,
    longitude: -70.613125,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'reciclaje19',
    name: 'Basurero de reciclaje',
    area: @sj,
    latitude: -33.500213,
    longitude: -70.613154,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'reciclaje2',
    name: 'Basurero de reciclaje',
    area: @sj,
    latitude: -33.500369,
    longitude: -70.614493,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'reciclaje20',
    name: 'Basurero de reciclaje',
    area: @sj,
    latitude: -33.499814,
    longitude: -70.612603,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'reciclaje21',
    name: 'Basurero de reciclaje',
    area: @sj,
    latitude: -33.500300,
    longitude: -70.612507,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'reciclaje22',
    name: 'Basurero de reciclaje',
    area: @sj,
    latitude: -33.500450,
    longitude: -70.611239,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'reciclaje23',
    name: 'Basurero de reciclaje',
    area: @sj,
    latitude: -33.500572,
    longitude: -70.610761,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'reciclaje24',
    name: 'Basurero de reciclaje',
    area: @cc,
    latitude: -33.441271,
    longitude: -70.640637,
    floor: '1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'reciclaje25',
    name: 'Basurero de reciclaje',
    area: @lc,
    latitude: -33.419454, 
    longitude: -70.618450,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'reciclaje26',
    name: 'Basurero de reciclaje',
    area: @sj,
    latitude: -33.499952,
    longitude: -70.614743,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'reciclaje27',
    name: 'Basurero de reciclaje',
    area: @sj,
    latitude: -33.500331,
    longitude: -70.612970,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'reciclaje28',
    name: 'Basurero de reciclaje',
    area: @cc,
    latitude: -33.441791,
    longitude: -70.640508,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'reciclaje29',
    name: 'Basurero de reciclaje',
    area: @cc,
    latitude: -33.441351,
    longitude: -70.640007,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'reciclaje3',
    name: 'Basurero de reciclaje',
    area: @sj,
    latitude: -33.499936,
    longitude: -70.613730,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'reciclaje30',
    name: 'Basurero de reciclaje',
    area: @lc,
    latitude: -33.419555,
    longitude: -70.618540,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'reciclaje31',
    name: 'Basurero de reciclaje',
    area: @lc,
    latitude: -33.419170,
    longitude: -70.617931,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'reciclaje32',
    name: 'Basurero de reciclaje',
    area: @lc,
    latitude: -33.418768,
    longitude: -70.618145,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'reciclaje33',
    name: 'Basurero de reciclaje',
    area: @co,
    latitude: -33.445798,
    longitude: -70.594330,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'reciclaje34',
    name: 'Basurero de reciclaje',
    area: @co,
    latitude: -33.445747,
    longitude: -70.593911,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'reciclaje35',
    name: 'Basurero de reciclaje',
    area: @co,
    latitude: -33.446120,
    longitude: -70.593421,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'reciclaje4',
    name: 'Basurero de reciclaje',
    area: @sj,
    latitude: -33.498056,
    longitude: -70.614263,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'reciclaje5',
    name: 'Basurero de reciclaje',
    area: @sj,
    latitude: -33.498190,
    longitude: -70.613578,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'reciclaje6',
    name: 'Basurero de reciclaje',
    area: @sj,
    latitude: -33.497435,
    longitude: -70.613783,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'reciclaje7',
    name: 'Basurero de reciclaje',
    area: @sj,
    latitude: -33.496800,
    longitude: -70.613379,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'reciclaje8',
    name: 'Basurero de reciclaje',
    area: @sj,
    latitude: -33.496805,
    longitude: -70.611423,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'reciclaje9',
    name: 'Basurero de reciclaje',
    area: @sj,
    latitude: -33.496819,
    longitude: -70.610955,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano1',
    name: 'Baño',
    area: @sj,
    latitude: -33.500279,
    longitude: -70.609976,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano10',
    name: 'Baño',
    area: @sj,
    latitude: -33.499711,
    longitude: -70.612989,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano11',
    name: 'Baño',
    area: @sj,
    latitude: -33.499246,
    longitude: -70.615733,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano12',
    name: 'Baño',
    area: @sj,
    latitude: -33.497038,
    longitude: -70.611095,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano13',
    name: 'Baño',
    area: @sj,
    latitude: -33.497129,
    longitude: -70.611926,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano14',
    name: 'Baño',
    area: @sj,
    latitude: -33.497770,
    longitude: -70.615337,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano15',
    name: 'Baño',
    area: @sj,
    latitude: -33.498136,
    longitude: -70.614242,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano16',
    name: 'Baño',
    area: @sj,
    latitude: -33.498133,
    longitude: -70.614249,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano17',
    name: 'Baño',
    area: @sj,
    latitude: -33.498224,
    longitude: -70.614968,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano18',
    name: 'Baño',
    area: @sj,
    latitude: -33.498957,
    longitude: -70.613033,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano19',
    name: 'Baño',
    area: @sj,
    latitude: -33.498051,
    longitude: -70.611167,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano2',
    name: 'Baño',
    area: @sj,
    latitude: -33.496731,
    longitude: -70.614014,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano20',
    name: 'Baño',
    area: @sj,
    latitude: -33.498852,
    longitude: -70.613845,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano21',
    name: 'Baño',
    area: @sj,
    latitude: -33.499114,
    longitude: -70.614356,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano22',
    name: 'Baño',
    area: @sj,
    latitude: -33.500518,
    longitude: -70.612970,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano23',
    name: 'Baño',
    area: @sj,
    latitude: -33.500462,
    longitude: -70.612518,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano24',
    name: 'Baño',
    area: @sj,
    latitude: -33.500044,
    longitude: -70.613149,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano25',
    name: 'Baño',
    area: @sj,
    latitude: -33.497709,
    longitude: -70.610613,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano26',
    name: 'Baño',
    area: @sj,
    latitude: -33.497928,
    longitude: -70.610600,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano27',
    name: 'Baño',
    area: @sj,
    latitude: -33.497452,
    longitude: -70.610290,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano28',
    name: 'Baño',
    area: @sj,
    latitude: -33.498804,
    longitude: -70.610091,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano29',
    name: 'Baño',
    area: @sj,
    latitude: -33.499384,
    longitude: -70.610088,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano3',
    name: 'Baño',
    area: @sj,
    latitude: -33.500274,
    longitude: -70.610345,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano30',
    name: 'Baño',
    area: @sj,
    latitude: -33.498074,
    longitude: -70.609122,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano31',
    name: 'Baño',
    area: @sj,
    latitude: -33.496880,
    longitude: -70.609526,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano32',
    name: 'Baño',
    area: @sj,
    latitude: -33.497108,
    longitude: -70.609505,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano33',
    name: 'Baño',
    area: @sj,
    latitude: -33.500560,
    longitude: -70.611205,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano34',
    name: 'Baño',
    area: @sj,
    latitude: -33.500639,
    longitude: -70.610794,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano35',
    name: 'Baño',
    area: @sj,
    latitude: -33.498191,
    longitude: -70.613487,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano36',
    name: 'Baño',
    area: @sj,
    latitude: -33.441206,
    longitude: -70.640170,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano37',
    name: 'Baño',
    area: @sj,
    latitude: -33.440979,
    longitude: -70.640580,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano38',
    name: 'Baño',
    area: @sj,
    latitude: -33.441534,
    longitude: -70.640684,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano39',
    name: 'Baño',
    area: @sj,
    latitude: -33.440989,
    longitude: -70.640544,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano4',
    name: 'Baño',
    area: @sj,
    latitude: -33.499226,
    longitude: -70.611995,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano40',
    name: 'Baño',
    area: @sj,
    latitude: -33.441248,
    longitude: -70.640934,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano41',
    name: 'Baño',
    area: @sj,
    latitude: -33.445844,
    longitude: -70.594468,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano42',
    name: 'Baño',
    area: @sj,
    latitude: -33.445003,
    longitude: -70.593557,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano43',
    name: 'Baño',
    area: @sj,
    latitude: -33.446249,
    longitude: -70.593734,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano44',
    name: 'Baño',
    area: @sj,
    latitude: -33.445881,
    longitude: -70.594410,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano45',
    name: 'Baño',
    area: @sj,
    latitude: -33.419679,
    longitude: -70.618642,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano46',
    name: 'Baño',
    area: @sj,
    latitude: -33.419240,
    longitude: -70.617769,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano47',
    name: 'Baño',
    area: @sj,
    latitude: -33.418811,
    longitude: -70.618033,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano48',
    name: 'Baño',
    area: @sj,
    latitude: -33.419443,
    longitude: -70.618588,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano49',
    name: 'Baño',
    area: @sj,
    latitude: -33.420053,
    longitude: -70.618183,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano5',
    name: 'Baño',
    area: @sj,
    latitude: -33.497407,
    longitude: -70.613161,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano6',
    name: 'Baño',
    area: @sj,
    latitude: -33.496790,
    longitude: -70.613154,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano7',
    name: 'Baño',
    area: @sj,
    latitude: -33.500563,
    longitude: -70.611273,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano8',
    name: 'Baño',
    area: @sj,
    latitude: -33.498134,
    longitude: -70.610171,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bano9',
    name: 'Baño',
    area: @sj,
    latitude: -33.499577,
    longitude: -70.615009,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'biblio_biomed',
    name: 'Biblioteca Biomédica',
    area: @cc,
    latitude: -33.441312,
    longitude: -70.640322,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'biblio_der_com',
    name: 'Biblioteca Derecho y Comunicaciones',
    area: @cc,
    latitude: -33.441325,
    longitude: -70.640317,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'biblio_contador',
    name: 'Biblioteca Lo Contador',
    area: @lc,
    latitude: -33.419372,
    longitude: -70.618268,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'biblio_oriente',
    name: 'Biblioteca Oriente',
    area: @co,
    latitude: -33.445472,
    longitude: -70.593408,
    floor: '1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'biblio_cs',
    name: 'Biblioteca de Ciencias Sociales',
    area: @sociales,
    latitude: -33.498421,
    longitude: -70.609898,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'biblio_hum',
    name: 'Biblioteca de Humanidades',
    area: @sj,
    latitude: -33.497495,
    longitude: -70.613940,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'biblio_mat',
    name: 'Biblioteca de Matemática',
    area: @matematica,
    latitude: -33.499831,
    longitude: -70.610784,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'biblio_teo',
    name: 'Biblioteca de Teología',
    area: @a_teo,
    latitude: -33.497838,
    longitude: -70.610826,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'biohuerto_acg',
    name: 'Biohuerto',
    area: @sj,
    latitude: -33.496081,
    longitude: -70.607884,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bodega_cs',
    name: 'Bodega',
    area: @sj,
    latitude: -33.500496,
    longitude: -70.610034,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'CARAUC',
    name: 'CARA UC',
    area: @sj,
    latitude: -33.497909,
    longitude: -70.608993,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'cauc',
    name: 'CAUC',
    area: @sj,
    latitude: -33.499200,
    longitude: -70.612130,
    floor: '3',
    information: 'Comisión de Acogida',
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'CC10',
    name: 'CC10',
    area: @a_cc,
    latitude: -33.498967,
    longitude: -70.613442,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'CC201',
    name: 'CC201',
    area: @a_cc,
    latitude: -33.498928,
    longitude: -70.613394,
    floor: '2?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'CC202',
    name: 'CC202',
    area: @a_cc,
    latitude: -33.499013,
    longitude: -70.613368,
    floor: '2?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'CC24',
    name: 'CC24',
    area: @sj,
    latitude: -33.498838,
    longitude: -70.613738,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'CC25',
    name: 'CC25',
    area: @sj,
    latitude: -33.498852,
    longitude: -70.613775,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'CC27',
    name: 'CC27',
    area: @sj,
    latitude: -33.498870,
    longitude: -70.614130,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'CC28',
    name: 'CC28',
    area: @sj,
    latitude: -33.498888,
    longitude: -70.614168,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'CDI-102',
    name: 'CDI-102',
    area: @cdi,
    latitude: -33.497796,
    longitude: -70.615314,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'CDI-103',
    name: 'CDI-103',
    area: @cdi,
    latitude: -33.497796,
    longitude: -70.615314,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'CDI-201',
    name: 'CDI-201',
    area: @cdi,
    latitude: -33.497796,
    longitude: -70.615314,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'CDI-202',
    name: 'CDI-202',
    area: @cdi,
    latitude: -33.497796,
    longitude: -70.615314,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'CECOM',
    name: 'CECOM',
    area: @sj,
    latitude: -33.441366,
    longitude: -70.640815,
    floor: '1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'CED',
    name: 'CED',
    area: @sj,
    latitude: -33.418967,
    longitude: -70.618195,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'ceps',
    name: 'CEPS',
    area: @sj,
    latitude: -33.497855,
    longitude: -70.609893,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'cequc',
    name: 'CEQUC',
    area: @sj,
    latitude: -33.499102,
    longitude: -70.610713,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'COM307',
    name: 'COM307',
    area: @cc,
    latitude: -33.441343,
    longitude: -70.640916,
    floor: '3?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'COM308',
    name: 'COM308',
    area: @cc,
    latitude: -33.441368,
    longitude: -70.640897,
    floor: '3?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'COM309',
    name: 'COM309',
    area: @cc,
    latitude: -33.441368,
    longitude: -70.640897,
    floor: '3?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
)

place = Place.new(
    identifier: 'COM310',
    name: 'COM310',
    area: @cc,
    latitude: -33.441444,
    longitude: -70.640729,
    floor: '3?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'crisol1',
    name: 'CRISOL',
    area: @sj,
    latitude: -33.498139,
    longitude: -70.613804,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'crisol2',
    name: 'CRISOL',
    area: @sj,
    latitude: -33.497836,
    longitude: -70.610202,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'crisol3',
    name: 'CRISOL',
    area: @sj,
    latitude: -33.497959,
    longitude: -70.610188,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'crisol4',
    name: 'CRISOL',
    area: @sj,
    latitude: -33.499133,
    longitude: -70.612116,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'crisol5',
    name: 'CRISOL',
    area: @sj,
    latitude: -33.445834,
    longitude: -70.594471,
    floor: '1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'crisol6',
    name: 'CRISOL',
    area: @sj,
    latitude: -33.419267,
    longitude: -70.618316,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'crisol7',
    name: 'CRISOL',
    area: @sj,
    latitude: -33.419254,
    longitude: -70.618064,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'CS-101',
    name: 'CS-101',
    area: @a_salud,
    latitude: -33.500629,
    longitude: -70.610383,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'CS-102',
    name: 'CS-102',
    area: @a_salud,
    latitude: -33.500645,
    longitude: -70.610194,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'CS-201',
    name: 'CS-201',
    area: @a_salud,
    latitude: -33.500629,
    longitude: -70.610410,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'CS-202',
    name: 'CS-202',
    area: @a_salud,
    latitude: -33.500616,
    longitude: -70.610344,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'CS-203',
    name: 'CS-203',
    area: @a_salud,
    latitude: -33.500640,
    longitude: -70.610269,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'CS-204',
    name: 'CS-204',
    area: @a_salud,
    latitude: -33.500640,
    longitude: -70.610192,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'CS-301',
    name: 'CS-301',
    area: @a_salud,
    latitude: -33.500629,
    longitude: -70.610410,
    floor: '3',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'CS-302',
    name: 'CS-302',
    area: @a_salud,
    latitude: -33.500616,
    longitude: -70.610344,
    floor: '3',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'CS-303',
    name: 'CS-303',
    area: @a_salud,
    latitude: -33.500640,
    longitude: -70.610269,
    floor: '3',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'CS-304',
    name: 'CS-304',
    area: @a_salud,
    latitude: -33.500640,
    longitude: -70.610192,
    floor: '3',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'CS-401',
    name: 'CS-401',
    area: @a_salud,
    latitude: -33.500629,
    longitude: -70.610410,
    floor: '4',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'CS-402',
    name: 'CS-402',
    area: @a_salud,
    latitude: -33.500616,
    longitude: -70.610344,
    floor: '4',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'CS-403',
    name: 'CS-403',
    area: @a_salud,
    latitude: -33.500640,
    longitude: -70.610269,
    floor: '4',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'CS-404',
    name: 'CS-404',
    area: @a_salud,
    latitude: -33.500640,
    longitude: -70.610192,
    floor: '4',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'CS-405',
    name: 'CS-405',
    area: @a_salud,
    latitude: -33.500669,
    longitude: -70.610021,
    floor: '4',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'cajero1',
    name: 'Cajero',
    area: @sj,
    latitude: -33.498794,
    longitude: -70.615907,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'cajero2',
    name: 'Cajero',
    area: @sj,
    latitude: -33.497082,
    longitude: -70.611207,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'cajero3',
    name: 'Cajero',
    area: @sj,
    latitude: -33.499624,
    longitude: -70.613563,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'cajero4',
    name: 'Cajero',
    area: @sj,
    latitude: -33.498126,
    longitude: -70.613097,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'cajero5',
    name: 'Cajero',
    area: @sj,
    latitude: -33.498168,
    longitude: -70.610231,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'cajero6',
    name: 'Cajero',
    area: @sj,
    latitude: -33.441244,
    longitude: -70.640889,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'cajero7',
    name: 'Cajero',
    area: @sj,
    latitude: -33.446624,
    longitude: -70.594578,
    floor: '1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'cajero8',
    name: 'Cajero',
    area: @sj,
    latitude: -33.419508,
    longitude: -70.618057,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'OR',
    name: 'Campus Oriente',
    area: @sj,
    latitude: -33.445714,
    longitude: -70.593499,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'campus_saludable',
    name: 'Campus Saludable',
    area: @sj,
    latitude: -33.497909,
    longitude: -70.608993,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'VIL',
    name: 'Campus Villarrica',
    area: @vr,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'capellan_cc',
    name: 'Capellán',
    area: @sj,
    latitude: -33.440825,
    longitude: -70.640773,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'capilla_lc',
    name: 'Capilla',
    area: @lc,
    latitude: -33.420019,
    longitude: -70.618267,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'CAPILLA',
    name: 'Capilla (Sala)',
    area: @lc,
    latitude: -33.419946,
    longitude: -70.618384,
    floor: '1',
    information: 'Aquí hacen clases',
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'capilla_or',
    name: 'Capilla Oriente',
    area: @co,
    latitude: -33.446352,
    longitude: -70.593928,
    floor: '1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------


place = Place.new(
    identifier: 'central_apuntes_enf',
    name: 'Central de Apuntes',
    area: @sj,
    latitude: -33.498854,
    longitude: -70.613187,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'cearq',
    name: 'Centro de Alumnos de Arquitectura',
    area: @a_arq,
    latitude: -33.419496,
    longitude: -70.618523,
    floor: '1',
    information: 'CEARQ',
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'ce_college',
    name: 'Centro de Alumnos de College',
    area: @a_college,
    latitude: -33.500660,
    longitude: -70.610596,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'cai',
    name: 'Centro de Alumnos de Ingeniería (CAI)',
    area: @a_ing,
    latitude: -33.500030,
    longitude: -70.613225,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'centroalumnos_med',
    name: 'Centro de Alumnos de Medicina',
    area: @a_med,
    latitude: -33.441425,
    longitude: -70.640525,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'ca_teo',
    name: 'Centro de Alumnos de Teología',
    area: @a_teo,
    latitude: -33.497716,
    longitude: -70.610729,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'centro_des_docente',
    name: 'Centro de Desarrollo Docente',
    area: @sj,
    latitude: -33.499173,
    longitude: -70.612111,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'CEEP',
    name: 'Centro de Estudiantes de Educación de Párvulos',
    area: @a_edu,
    latitude: -33.498147,
    longitude: -70.613745,
    floor: '1',
    information: 'CEEP',
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'cdi_sj',
    name: 'Centro de Innovación',
    area: @sj,
    latitude: -33.497854,
    longitude: -70.615327,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'centro_prev_cancer_diges',
    name: 'Centro de Prevención de Cáncer Digistivo',
    area: @sj,
    latitude: -33.441546,
    longitude: -70.640279,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'ciencias_materiales',
    name: 'Ciencia de los Materiales',
    area: @sj,
    latitude: -33.499558,
    longitude: -70.611290,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'BIO',
    name: 'Ciencias Biológicas',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'D',
    name: 'College',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'college_uc',
    name: 'College UC',
    area: @sj,
    latitude: -33.500422,
    longitude: -70.611161,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'luksic',
    name: 'Complejo Andrónico Luksic',
    area: @sj,
    latitude: -33.499906,
    longitude: -70.614197,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'Computacion_SA',
    name: 'Computación',
    area: @sj,
    latitude: -33.499145,
    longitude: -70.615123,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'pc1',
    name: 'Computadores',
    area: @sj,
    latitude: -33.499145,
    longitude: -70.615123,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'pc10',
    name: 'Computadores',
    area: @sj,
    latitude: -33.498915,
    longitude: -70.610695,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'pc11',
    name: 'Computadores',
    area: @sj,
    latitude: -33.441303,
    longitude: -70.640081,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'pc2',
    name: 'Computadores',
    area: @sj,
    latitude: -33.496921,
    longitude: -70.611203,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'pc3',
    name: 'Computadores',
    area: @sj,
    latitude: -33.499045,
    longitude: -70.613138,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'pc4',
    name: 'Computadores',
    area: @sj,
    latitude: -33.498967,
    longitude: -70.613442,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'pc5',
    name: 'Computadores',
    area: @sj,
    latitude: -33.499683,
    longitude: -70.613110,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'pc6',
    name: 'Computadores',
    area: @sj,
    latitude: -33.499674,
    longitude: -70.612956,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'pc7',
    name: 'Computadores',
    area: @sj,
    latitude: -33.500404,
    longitude: -70.611025,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'pc8',
    name: 'Computadores',
    area: @sj,
    latitude: -33.500620,
    longitude: -70.610785,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'pc9',
    name: 'Computadores',
    area: @sj,
    latitude: -33.500547,
    longitude: -70.610029,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'COM',
    name: 'Comunicaciones',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'correspondencia_cc',
    name: 'Correspondencia',
    area: @sj,
    latitude: -33.440899,
    longitude: -70.641083,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'almuerzo12',
    name: 'Cómida',
    area: @sj,
    latitude: -33.445119,
    longitude: -70.593593,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'D101',
    name: 'D101',
    area: @sj,
    latitude: -33.500558,
    longitude: -70.611208,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'D104',
    name: 'D104',
    area: @sj,
    latitude: -33.500515,
    longitude: -70.611019,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'D201',
    name: 'D201',
    area: @sj,
    latitude: -33.500563,
    longitude: -70.611268,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'D202',
    name: 'D202',
    area: @sj,
    latitude: -33.500563,
    longitude: -70.611241,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'D203',
    name: 'D203',
    area: @sj,
    latitude: -33.500587,
    longitude: -70.611018,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'D204',
    name: 'D204',
    area: @sj,
    latitude: -33.500598,
    longitude: -70.610932,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'D301',
    name: 'D301',
    area: @sj,
    latitude: -33.500581,
    longitude: -70.611225,
    floor: '3',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'D302',
    name: 'D302',
    area: @sj,
    latitude: -33.500579,
    longitude: -70.611166,
    floor: '3',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'D303',
    name: 'D303',
    area: @sj,
    latitude: -33.500590,
    longitude: -70.611072,
    floor: '3',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'D304',
    name: 'D304',
    area: @sj,
    latitude: -33.500607,
    longitude: -70.610919,
    floor: '3',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'D305',
    name: 'D305',
    area: @sj,
    latitude: -33.500618,
    longitude: -70.610737,
    floor: '3',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'D306',
    name: 'D306',
    area: @sj,
    latitude: -33.500633,
    longitude: -70.610636,
    floor: '3',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'DAE',
    name: 'DAE',
    area: @sj,
    latitude: -33.497909,
    longitude: -70.608993,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'dae_cc',
    name: 'DAE',
    area: @sj,
    latitude: -33.441281,
    longitude: -70.640251,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'DARA',
    name: 'DARA',
    area: @sj,
    latitude: -33.497763,
    longitude: -70.613103,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'DASE',
    name: 'DASE',
    area: @sj,
    latitude: -33.497840,
    longitude: -70.613116,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'DECON',
    name: 'DECON',
    area: @sj,
    latitude: -33.497389,
    longitude: -70.607615,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'DICTUC_SA',
    name: 'DICTUD',
    area: @sj,
    latitude: -33.498952,
    longitude: -70.614970,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'def_solidos',
    name: 'Defectos en Sólidos',
    area: @sj,
    latitude: -33.499558,
    longitude: -70.611290,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'DCC',
    name: 'Departamento Ciencias de la Computación (DCC)',
    area: @sj,
    latitude: -33.498974,
    longitude: -70.615160,
    floor: '4',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'dir_asist_eco_cc',
    name: 'Departamento de Asistencia Económica',
    area: @sj,
    latitude: -33.441110,
    longitude: -70.640691,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'dpto_farmacia',
    name: 'Departamento de Farmacia',
    area: @sj,
    latitude: -33.498839,
    longitude: -70.610867,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'dpto_fisico_qim',
    name: 'Departamento de Físico-Química',
    area: @sj,
    latitude: -33.499187,
    longitude: -70.611589,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'dpto_matricula_cc',
    name: 'Departamento de Matrícula',
    area: @sj,
    latitude: -33.441110,
    longitude: -70.640691,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'dpto_qim_inorganica',
    name: 'Departamento de Química Inorgánica',
    area: @sj,
    latitude: -33.498859,
    longitude: -70.611214,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'dir_reg_servi_cc',
    name: 'Departamento de Registros y Servicios',
    area: @sj,
    latitude: -33.441110,
    longitude: -70.640691,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'DPT',
    name: 'Deportes',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'DEC',
    name: 'Derecho',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'dir_ENF',
    name: 'Dirección',
    area: @sj,
    latitude: -33.499027,
    longitude: -70.613004,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'dir_cc',
    name: 'Dirección',
    area: @sj,
    latitude: -33.498762,
    longitude: -70.613470,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'dir_academica_qim',
    name: 'Dirección Académica',
    area: @sj,
    latitude: -33.498754,
    longitude: -70.610875,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'dir_sist_bibliotecas',
    name: 'Dirección Sistema de Bibliotecas',
    area: @sj,
    latitude: -33.498857,
    longitude: -70.609777,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'dir_docencia_fis',
    name: 'Dirección de Docencia',
    area: @sj,
    latitude: -33.499468,
    longitude: -70.610958,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'dir_informatica',
    name: 'Dirección de Informática',
    area: @sj,
    latitude: -33.499103,
    longitude: -70.612076,
    floor: '2-3?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'Direc_pregrado_ing',
    name: 'Dirección de Pregrado',
    area: @sj,
    latitude: -33.499616,
    longitude: -70.612735,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'dir_pregrado_cc',
    name: 'Dirección de Pregrado',
    area: @sj,
    latitude: -33.441825,
    longitude: -70.639324,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'dir_posgrado',
    name: 'Dirección de Prosgrado',
    area: @sj,
    latitude: -33.441690,
    longitude: -70.639266,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'DIS',
    name: 'Diseño',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'doc_lc',
    name: 'Doctorados',
    area: @sj,
    latitude: -33.418620,
    longitude: -70.616706,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'domo1',
    name: 'Domo',
    area: @sj,
    latitude: -33.499343,
    longitude: -70.613116,
    floor: '1',
    information: 'Domo',
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'domo2',
    name: 'Domo',
    area: @sj,
    latitude: -33.499823,
    longitude: -70.612897,
    floor: '1',
    information: 'Domo',
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'domo_ING',
    name: 'Domos de Ingeniería',
    area: @sj,
    latitude: -33.499823,
    longitude: -70.612897,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'E10',
    name: 'E10',
    area: @sj,
    latitude: -33.499134,
    longitude: -70.614200,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'E11',
    name: 'E11',
    area: @sj,
    latitude: -33.499022,
    longitude: -70.614178,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'E12',
    name: 'E12',
    area: @sj,
    latitude: -33.499022,
    longitude: -70.614076,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'E13',
    name: 'E13',
    area: @sj,
    latitude: -33.499111,
    longitude: -70.614081,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'E14',
    name: 'E14',
    area: @sj,
    latitude: -33.499089,
    longitude: -70.613797,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'E15',
    name: 'E15',
    area: @sj,
    latitude: -33.499013,
    longitude: -70.613797,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'E16',
    name: 'E16',
    area: @sj,
    latitude: -33.498981,
    longitude: -70.613706,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'E17',
    name: 'E17',
    area: @sj,
    latitude: -33.499075,
    longitude: -70.613673,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'ED109',
    name: 'ED109',
    area: @sj,
    latitude: -33.498179,
    longitude: -70.614941,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'ED110',
    name: 'ED110',
    area: @sj,
    latitude: -33.498235,
    longitude: -70.614842,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'ED111',
    name: 'ED111',
    area: @sj,
    latitude: -33.498119,
    longitude: -70.614193,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'ED112',
    name: 'ED112',
    area: @sj,
    latitude: -33.498099,
    longitude: -70.613990,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'ED113',
    name: 'ED113',
    area: @sj,
    latitude: -33.498108,
    longitude: -70.613993,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'ED214',
    name: 'ED214',
    area: @sj,
    latitude: -33.498117,
    longitude: -70.614207,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'ED215',
    name: 'ED215',
    area: @sj,
    latitude: -33.498144,
    longitude: -70.614223,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'ED216',
    name: 'ED216',
    area: @sj,
    latitude: -33.498055,
    longitude: -70.613960,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'ED217',
    name: 'ED217',
    area: @sj,
    latitude: -33.498120,
    longitude: -70.614035,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'ED218',
    name: 'ED218',
    area: @sj,
    latitude: -33.498098,
    longitude: -70.613986,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'ED219',
    name: 'ED219',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'ediciones_arq',
    name: 'Ediciones ARQ',
    area: @sj,
    latitude: -33.419849,
    longitude: -70.617716,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'RaulDeves',
    name: 'Edificio Raul Deves',
    area: @sj,
    latitude: -33.499616,
    longitude: -70.612735,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'EDU',
    name: 'Educación',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'eletro_qim',
    name: 'Eletroquímica',
    area: @sj,
    latitude: -33.498722,
    longitude: -70.610711,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'EEA',
    name: 'Escuela de Administración',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'escuela_arte',
    name: 'Escuela de Arte',
    area: @sj,
    latitude: -33.445349,
    longitude: -70.594181,
    floor: '1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'CCL',
    name: 'Escuela de Construcción Civil',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'ENF',
    name: 'Escuela de Enfermería',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'ING',
    name: 'Escuela de Ingeniería',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'MED',
    name: 'Escuela de Medicina',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'escuela_musica',
    name: 'Escuela de Música',
    area: @sj,
    latitude: -33.445832,
    longitude: -70.592896,
    floor: '1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'PSI',
    name: 'Escuela de Psicología',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'escuela_psico',
    name: 'Escuela de Psicología',
    area: @sj,
    latitude: -33.498403,
    longitude: -70.610134,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'escuela_teatro',
    name: 'Escuela de Teatro',
    area: @sj,
    latitude: -33.446006,
    longitude: -70.593148,
    floor: '1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'TSL',
    name: 'Escuela de Trabajo Social',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'escuela_trab_social',
    name: 'Escuela de Trabajo Social',
    area: @sj,
    latitude: -33.498501,
    longitude: -70.610128,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bici1',
    name: 'Estacionamiento de Bicicletas',
    area: @sj,
    latitude: -33.497740,
    longitude: -70.612941,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bici19',
    name: 'Estacionamiento de Bicicletas',
    area: @sj,
    latitude: -33.418895,
    longitude: -70.618351,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bici2',
    name: 'Estacionamiento de Bicicletas',
    area: @sj,
    latitude: -33.499361,
    longitude: -70.614255,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bici3',
    name: 'Estacionamiento de Bicicletas',
    area: @sj,
    latitude: -33.497237,
    longitude: -70.610355,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bici4',
    name: 'Estacionamiento de Bicicletas',
    area: @sj,
    latitude: -33.498375,
    longitude: -70.610533,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bici5',
    name: 'Estacionamiento de Bicicletas',
    area: @sj,
    latitude: -33.500282,
    longitude: -70.609832,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bici6',
    name: 'Estacionamiento de Bicicletas',
    area: @sj,
    latitude: -33.500706,
    longitude: -70.608004,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bici7',
    name: 'Estacionamiento de Bicicletas',
    area: @sj,
    latitude: -33.499442,
    longitude: -70.611902,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'bici8',
    name: 'Estacionamiento de Bicicletas',
    area: @sj,
    latitude: -33.441524,
    longitude: -70.639994,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'URB',
    name: 'Estudios Urbanos',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'extension_cc',
    name: 'Extensión',
    area: @sj,
    latitude: -33.440847,
    longitude: -70.641010,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'F1',
    name: 'F1',
    area: @sj,
    latitude: -33.499031,
    longitude: -70.613146,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'F2',
    name: 'F2',
    area: @sj,
    latitude: -33.498973,
    longitude: -70.613149,
    floor: '1',
    information: 'Auditorio',
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'F3',
    name: 'F3',
    area: @sj,
    latitude: -33.498892,
    longitude: -70.613160,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'FADEU',
    name: 'FADEU',
    area: @lc,
    latitude: -33.419663,
    longitude: -70.618624,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'feuc_cc',
    name: 'FEUC',
    area: @sj,
    latitude: -33.440857,
    longitude: -70.640356,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'feuc_lc',
    name: 'FEUC',
    area: @sj,
    latitude: -33.419700,
    longitude: -70.618192,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'feuc_sociales',
    name: 'FEUC',
    area: @sj,
    latitude: -33.497766,
    longitude: -70.609919,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'FT-101',
    name: 'FT-101',
    area: @sj,
    latitude: -33.497971,
    longitude: -70.610615,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'FT-102',
    name: 'FT-102',
    area: @sj,
    latitude: -33.497703,
    longitude: -70.610647,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'FT-103',
    name: 'FT-103',
    area: @sj,
    latitude: -33.497656,
    longitude: -70.610762,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'FT-104',
    name: 'FT-104',
    area: @sj,
    latitude: -33.497985,
    longitude: -70.610700,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'FT-105',
    name: 'FT-105',
    area: @sj,
    latitude: -33.498020,
    longitude: -70.610714,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'facultad_bio_cel_mole',
    name: 'Facultad Biología Celular y Molecular',
    area: @sj,
    latitude: -33.441837,
    longitude: -70.639496,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'facultad_astro',
    name: 'Facultad de Astronomía',
    area: @sj,
    latitude: -33.499850,
    longitude: -70.611151,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'facultad_comunicaciones',
    name: 'Facultad de Comunicaciones',
    area: @sj,
    latitude: -33.441423,
    longitude: -70.640802,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'facultad_filosofia',
    name: 'Facultad de Filosofía',
    area: @sj,
    latitude: -33.496753,
    longitude: -70.614067,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'facultad_fisiologia',
    name: 'Facultad de Fisiología',
    area: @sj,
    latitude: -33.441403,
    longitude: -70.639573,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'facultad_geografia',
    name: 'Facultad de Geografía',
    area: @sj,
    latitude: -33.497309,
    longitude: -70.613166,
    floor: '2?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'facultad_letras',
    name: 'Facultad de Letras',
    area: @sj,
    latitude: -33.496719,
    longitude: -70.613595,
    floor: '2?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'facultad_mate',
    name: 'Facultad de Matemática',
    area: @sj,
    latitude: -33.499762,
    longitude: -70.610652,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'facultad_quimica',
    name: 'Facultad de Química',
    area: @sj,
    latitude: -33.498832,
    longitude: -70.611327,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'TTF',
    name: 'Facultad de Teología',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'fotocopia18',
    name: 'Fotocopia iPlot',
    area: @sj,
    latitude: -33.419393,
    longitude: -70.618427,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'fotocopia17',
    name: 'Fotocopiadora BIOUC',
    area: @sj,
    latitude: -33.441965,
    longitude: -70.639700,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'fotocopia15',
    name: 'Fotocopiadora de Derecho',
    area: @sj,
    latitude: -33.441015,
    longitude: -70.640385,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'fotocopia16',
    name: 'Fotocopiadora de Medicina',
    area: @sj,
    latitude: -33.441542,
    longitude: -70.640571,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'fotocopia1',
    name: 'Fotocopias',
    area: @sj,
    latitude: -33.497615,
    longitude: -70.610703,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'fotocopia10',
    name: 'Fotocopias',
    area: @sj,
    latitude: -33.498135,
    longitude: -70.613398,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'fotocopia11',
    name: 'Fotocopias',
    area: @sj,
    latitude: -33.500118,
    longitude: -70.613304,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'fotocopia12',
    name: 'Fotocopias',
    area: @sj,
    latitude: -33.501360,
    longitude: -70.611823,
    floor: '1',
    information: 'Afuera de la universidad.',
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'fotocopia13',
    name: 'Fotocopias',
    area: @sj,
    latitude: -33.501639,
    longitude: -70.611671,
    floor: '1',
    information: 'Afuera de la universidad.',
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'fotocopia14',
    name: 'Fotocopias',
    area: @sj,
    latitude: -33.498139,
    longitude: -70.616333,
    floor: '1',
    information: 'Afuera de la universidad.',
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'fotocopia2',
    name: 'Fotocopias',
    area: @sj,
    latitude: -33.500526,
    longitude: -70.611040,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'fotocopia3',
    name: 'Fotocopias',
    area: @sj,
    latitude: -33.496932,
    longitude: -70.611425,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'fotocopia4',
    name: 'Fotocopias',
    area: @sj,
    latitude: -33.498150,
    longitude: -70.614246,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'fotocopia5',
    name: 'Fotocopias',
    area: @sj,
    latitude: -33.497499,
    longitude: -70.613976,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'fotocopia6',
    name: 'Fotocopias',
    area: @sj,
    latitude: -33.498856,
    longitude: -70.613184,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'fotocopia7',
    name: 'Fotocopias',
    area: @sj,
    latitude: -33.498980,
    longitude: -70.613669,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'fotocopia8',
    name: 'Fotocopias',
    area: @sj,
    latitude: -33.498911,
    longitude: -70.610767,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'fotocopia9',
    name: 'Fotocopias',
    area: @sj,
    latitude: -33.497815,
    longitude: -70.609874,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'galeria_macchina',
    name: 'Galería Macchina',
    area: @sj,
    latitude: -33.446751,
    longitude: -70.593597,
    floor: '1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'H1',
    name: 'H1',
    area: @sj,
    latitude: -33.499037,
    longitude: -70.615147,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'H2',
    name: 'H2',
    area: @sj,
    latitude: -33.499107,
    longitude: -70.615134,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'H3',
    name: 'H3',
    area: @sj,
    latitude: -33.499193,
    longitude: -70.615112,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'H4',
    name: 'H4',
    area: @sj,
    latitude: -33.499258,
    longitude: -70.615088,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'hall_cc',
    name: 'Hall Universitario',
    area: @sj,
    latitude: -33.441148,
    longitude: -70.640744,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'hall_sj',
    name: 'Hall Universitario',
    area: @sj,
    latitude: -33.498034,
    longitude: -70.613136,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'iplotuc',
    name: 'IPlotUC',
    area: @sj,
    latitude: -33.419393,
    longitude: -70.618427,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'Imprimircl',
    name: 'Imprimir.cl',
    area: @sj,
    latitude: -33.498135,
    longitude: -70.613398,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'informaciones_cc',
    name: 'Informaciones',
    area: @sj,
    latitude: -33.440872,
    longitude: -70.6409771,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'inst_confucio',
    name: 'Instituto Confucio',
    area: @sj,
    latitude: -33.446264,
    longitude: -70.594105,
    floor: '1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'AST',
    name: 'Instituto de Astrofísica',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'ICP',
    name: 'Instituto de Ciencia Política',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'EAE',
    name: 'Instituto de Economía',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'EST',
    name: 'Instituto de Estética',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'inst_estetica',
    name: 'Instituto de Estética',
    area: @sj,
    latitude: -33.446473,
    longitude: -70.593993,
    floor: '1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'FIL',
    name: 'Instituto de Filosofía',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'FIS',
    name: 'Instituto de Física',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'GEO',
    name: 'Instituto de Geografía',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'HIS',
    name: 'Instituto de Historia',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'SOL',
    name: 'Instituto de Sociología',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'ins_sociologia',
    name: 'Instituto de Sociología',
    area: @sj,
    latitude: -33.498501,
    longitude: -70.610128,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'J1',
    name: 'J1',
    area: @sj,
    latitude: -33.499116,
    longitude: -70.612157,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'J2',
    name: 'J2',
    area: @sj,
    latitude: -33.499094,
    longitude: -70.612106,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'J3',
    name: 'J3',
    area: @sj,
    latitude: -33.499107,
    longitude: -70.612041,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'J4',
    name: 'J4',
    area: @sj,
    latitude: -33.499089,
    longitude: -70.611987,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'L MORENO',
    name: 'L. Moreno',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'LAB1',
    name: 'LAB1',
    area: @sj,
    latitude: -33.496783,
    longitude: -70.609766,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'LAB101',
    name: 'LAB101',
    area: @sj,
    latitude: -33.500629,
    longitude: -70.610410,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'LAB102',
    name: 'LAB102',
    area: @sj,
    latitude: -33.500616,
    longitude: -70.610344,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'LAB103',
    name: 'LAB103',
    area: @sj,
    latitude: -33.500640,
    longitude: -70.610269,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'LAB104',
    name: 'LAB104',
    area: @sj,
    latitude: -33.500640,
    longitude: -70.610192,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'LAB11',
    name: 'LAB11',
    area: @sj,
    latitude: -33.499488,
    longitude: -70.610692,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'LAB12',
    name: 'LAB12',
    area: @sj,
    latitude: -33.499481,
    longitude: -70.610789,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'LAB13',
    name: 'LAB13',
    area: @sj,
    latitude: -33.499277,
    longitude: -70.610837,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'LAB14',
    name: 'LAB14',
    area: @sj,
    latitude: -33.499351,
    longitude: -70.610681,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'LAB2',
    name: 'LAB2',
    area: @sj,
    latitude: -33.496797,
    longitude: -70.609765,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'LAB3',
    name: 'LAB3',
    area: @sj,
    latitude: -33.496695,
    longitude: -70.609780,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'LAB4A',
    name: 'LAB4A',
    area: @sj,
    latitude: -33.496629,
    longitude: -70.609795,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'LAB4B',
    name: 'LAB4B',
    area: @sj,
    latitude: -33.496546,
    longitude: -70.609793,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'LF10',
    name: 'LF10',
    area: @sj,
    latitude: -33.499645,
    longitude: -70.610940,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'la_tala',
    name: 'La Tala',
    area: @sj,
    latitude: -33.419331,
    longitude: -70.617971,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'Y',
    name: 'La Y',
    area: @sj,
    latitude: -33.499176,
    longitude: -70.612194,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'lab_analisis_mov',
    name: 'Laboratorio Análisis del Movimiento',
    area: @sj,
    latitude: -33.500442,
    longitude: -70.609986,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'lab_ciclo_basico',
    name: 'Laboratorio Ciclo Básico',
    area: @sj,
    latitude: -33.498768,
    longitude: -70.611349,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'lab_fis_ejercicio',
    name: 'Laboratorio Fisiología del Ejercicio',
    area: @sj,
    latitude: -33.500344,
    longitude: -70.609962,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'lab_fisico_qim',
    name: 'Laboratorio Físico-Químico',
    area: @sj,
    latitude: -33.499187,
    longitude: -70.611589,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'lab_maxwell',
    name: 'Laboratorio James C. Maxwell',
    area: @sj,
    latitude: -33.499297,
    longitude: -70.610695,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'Piwonka',
    name: 'Laboratorio Piwonka',
    area: @lc,
    latitude: -33.419267,
    longitude: -70.618316,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'Quim Alime',
    name: 'Laboratorio Química de Alimentos',
    area: @sj,
    latitude: -33.500317,
    longitude: -70.610345,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'lab_tec_alimen',
    name: 'Laboratorio Técnicas Alimenticias',
    area: @sj,
    latitude: -33.500257,
    longitude: -70.610120,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'lab_fonetica_h',
    name: 'Laboratorio de Fonética',
    area: @sj,
    latitude: -33.496747,
    longitude: -70.613854,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'lab_geomatica',
    name: 'Laboratorio de Geomática',
    area: @sj,
    latitude: -33.497362,
    longitude: -70.613113,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'LAB. M y P',
    name: 'Laboratorio de Modelos y Prototipos ',
    area: @sj,
    latitude: -33.419167,
    longitude: -70.617730,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'lab_qim',
    name: 'Laboratorio de Química',
    area: @sj,
    latitude: -33.498781,
    longitude: -70.611333,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'lab_qim_organica',
    name: 'Laboratorio de Química Orgánica',
    area: @sj,
    latitude: -33.499022,
    longitude: -70.611056,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'lab_nutri',
    name: 'Laboratorio de evaluación nutricional',
    area: @sj,
    latitude: -33.500359,
    longitude: -70.610352,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'lab_blanconegro',
    name: 'Laboratorios Blanco y Negro',
    area: @sj,
    latitude: -33.497409,
    longitude: -70.609826,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'Lab.Docenc',
    name: 'Laboratorios Docentes',
    area: @sj,
    latitude: -33.499513,
    longitude: -70.610969,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'lab_docentes_cc_bio',
    name: 'Laboratorios Docentes',
    area: @sj,
    latitude: -33.441918,
    longitude: -70.639567,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'LET',
    name: 'Letras',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'libreriauc_sociales',
    name: 'Librería UC',
    area: @sj,
    latitude: -33.498336,
    longitude: -70.610208,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'lib_tala_or',
    name: 'Librería la Tala',
    area: @sj,
    latitude: -33.445503,
    longitude: -70.593665,
    floor: '1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'LAMPARA',
    name: 'LÁMPARA',
    area: @sj,
    latitude: -33.418941,
    longitude: -70.618043,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'm',
    name: 'M',
    area: @sj,
    latitude: -33.441493,
    longitude: -70.640542,
    floor: '1-?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'M1',
    name: 'M1',
    area: @sj,
    latitude: -33.497693,
    longitude: -70.609919,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'M2',
    name: 'M2',
    area: @sj,
    latitude: -33.497421,
    longitude: -70.609914,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'MAGISTER',
    name: 'Magister',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'magister_or',
    name: 'Masgister',
    area: @sj,
    latitude: -33.446333,
    longitude: -70.594229,
    floor: '1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'MAT',
    name: 'Matemáticas',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'micro_electro_cc',
    name: 'Microscopía Electrónica',
    area: @sj,
    latitude: -33.441992,
    longitude: -70.639585,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'MOSCATTI',
    name: 'Moscatti',
    area: @sj,
    latitude: -33.441369,
    longitude: -70.640321,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'MILTICANCH',
    name: 'Multicancha',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'maquina1',
    name: 'Máquina',
    area: @sj,
    latitude: -33.496875,
    longitude: -70.611566,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'maquina10',
    name: 'Máquina',
    area: @sj,
    latitude: -33.499384,
    longitude: -70.610088,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'maquina11',
    name: 'Máquina',
    area: @sj,
    latitude: -33.499349,
    longitude: -70.609885,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'maquina12',
    name: 'Máquina',
    area: @sj,
    latitude: -33.497071,
    longitude: -70.609311,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'maquina13',
    name: 'Máquina',
    area: @sj,
    latitude: -33.500565,
    longitude: -70.611192,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'maquina14',
    name: 'Máquina',
    area: @sj,
    latitude: -33.499188,
    longitude: -70.612019,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'maquina15',
    name: 'Máquina',
    area: @sj,
    latitude: -33.441304,
    longitude: -70.640858,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'maquina16',
    name: 'Máquina',
    area: @sj,
    latitude: -33.441260,
    longitude: -70.640967,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'maquina17',
    name: 'Máquina',
    area: @sj,
    latitude: -33.441529,
    longitude: -70.640659,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'maquina18',
    name: 'Máquina',
    area: @sj,
    latitude: -33.419398,
    longitude: -70.618452,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'maquina2',
    name: 'Máquina',
    area: @sj,
    latitude: -33.497118,
    longitude: -70.611854,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'maquina3',
    name: 'Máquina',
    area: @sj,
    latitude: -33.497157,
    longitude: -70.611181,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'maquina4',
    name: 'Máquina',
    area: @sj,
    latitude: -33.496777,
    longitude: -70.613876,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'maquina5',
    name: 'Máquina',
    area: @sj,
    latitude: -33.499990,
    longitude: -70.613255,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'maquina6',
    name: 'Máquina',
    area: @sj,
    latitude: -33.500318,
    longitude: -70.612582,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'maquina7',
    name: 'Máquina',
    area: @sj,
    latitude: -33.497452,
    longitude: -70.610290,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'maquina8',
    name: 'Máquina',
    area: @sj,
    latitude: -33.498476,
    longitude: -70.610066,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'maquina9',
    name: 'Máquina',
    area: @sj,
    latitude: -33.498265,
    longitude: -70.610226,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'MUS',
    name: 'Música',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'N10',
    name: 'N10',
    area: @sj,
    latitude: -33.497883,
    longitude: -70.610197,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'N11',
    name: 'N11',
    area: @sj,
    latitude: -33.497705,
    longitude: -70.610213,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'N12',
    name: 'N12',
    area: @sj,
    latitude: -33.497607,
    longitude: -70.610231,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'N13-A',
    name: 'N13-A',
    area: @sj,
    latitude: -33.497590,
    longitude: -70.610101,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'N13-B',
    name: 'N13-B',
    area: @sj,
    latitude: -33.497591,
    longitude: -70.610100,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'N14',
    name: 'N14',
    area: @sj,
    latitude: -33.497561,
    longitude: -70.610157,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'N15',
    name: 'N15',
    area: @sj,
    latitude: -33.497634,
    longitude: -70.610160,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'N16-A',
    name: 'N16-A',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'N16-B',
    name: 'N16-B',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'N17',
    name: 'N17',
    area: @sj,
    latitude: -33.499205,
    longitude: -70.609959,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'N18',
    name: 'N18',
    area: @sj,
    latitude: -33.499288,
    longitude: -70.609944,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'N1A',
    name: 'N1A',
    area: @sj,
    latitude: -33.499199,
    longitude: -70.610045,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'N1B',
    name: 'N1B',
    area: @sj,
    latitude: -33.499259,
    longitude: -70.610035,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'N2',
    name: 'N2',
    area: @sj,
    latitude: -33.498573,
    longitude: -70.610247,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'N25',
    name: 'N25',
    area: @sj,
    latitude: -33.498546,
    longitude: -70.610128,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'N26',
    name: 'N26',
    area: @sj,
    latitude: -33.498644,
    longitude: -70.610114,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'N27',
    name: 'N27',
    area: @sj,
    latitude: -33.498708,
    longitude: -70.610111,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'N28',
    name: 'N28',
    area: @sj,
    latitude: -33.498850,
    longitude: -70.610091,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'N29',
    name: 'N29',
    area: @sj,
    latitude: -33.498897,
    longitude: -70.610077,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'N3',
    name: 'N3',
    area: @sj,
    latitude: -33.498623,
    longitude: -70.610247,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'N30',
    name: 'N30',
    area: @sj,
    latitude: -33.498986,
    longitude: -70.610068,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'N31',
    name: 'N31',
    area: @sj,
    latitude: -33.499041,
    longitude: -70.610057,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'N32',
    name: 'N32',
    area: @sj,
    latitude: -33.499084,
    longitude: -70.610048,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'N33',
    name: 'N33',
    area: @sj,
    latitude: -33.499108,
    longitude: -70.610045,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'N34',
    name: 'N34',
    area: @sj,
    latitude: -33.499149,
    longitude: -70.610046,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'N35',
    name: 'N35',
    area: @sj,
    latitude: -33.499149,
    longitude: -70.610046,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'N36',
    name: 'N36',
    area: @sj,
    latitude: -33.499149,
    longitude: -70.610046,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'N37',
    name: 'N37',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'N4',
    name: 'N4',
    area: @sj,
    latitude: -33.498723,
    longitude: -70.610235,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'N5',
    name: 'N5',
    area: @sj,
    latitude: -33.498854,
    longitude: -70.610223,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'N6',
    name: 'N6',
    area: @sj,
    latitude: -33.498954,
    longitude: -70.610211,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'N7',
    name: 'N7',
    area: @sj,
    latitude: -33.499037,
    longitude: -70.610217,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'N8',
    name: 'N8',
    area: @sj,
    latitude: -33.499105,
    longitude: -70.610199,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'nutri_human',
    name: 'Nutrición Humana',
    area: @sj,
    latitude: -33.500502,
    longitude: -70.610026,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'oficina_uda',
    name: 'Oficina UDA',
    area: @sj,
    latitude: -33.500310,
    longitude: -70.610241,
    floor: '3?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'preuc_cc',
    name: 'PREU UC',
    area: @sj,
    latitude: -33.440524,
    longitude: -70.640507,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'preuuc_sociales',
    name: 'PREU UC',
    area: @sj,
    latitude: -33.497403,
    longitude: -70.609997,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'pastoral_cc',
    name: 'Pastoral UC',
    area: @sj,
    latitude: -33.440874,
    longitude: -70.640760,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'PatioSub_SA',
    name: 'Patio Subterraneo',
    area: @sj,
    latitude: -33.499330,
    longitude: -70.614910,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'politiic_pub_lc',
    name: 'Políticas Públicas UC',
    area: @sj,
    latitude: -33.419602,
    longitude: -70.618646,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'postgrado_lc',
    name: 'Postgrados',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'Preu_social_ING',
    name: 'Preuniversitario Social',
    area: @sj,
    latitude: -33.500199,
    longitude: -70.613298,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'prac_cs_1',
    name: 'Prácticos 1',
    area: @sj,
    latitude: -33.500440,
    longitude: -70.610050,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'prac_cs_2',
    name: 'Prácticos 2',
    area: @sj,
    latitude: -33.500342,
    longitude: -70.610029,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'puesto1',
    name: 'Puesto de comida',
    area: @sj,
    latitude: -33.497513,
    longitude: -70.614442,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'puesto10',
    name: 'Puesto de comida',
    area: @sj,
    latitude: -33.500714,
    longitude: -70.609947,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'puesto11',
    name: 'Puesto de comida',
    area: @sj,
    latitude: -33.498485,
    longitude: -70.611747,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'puesto12',
    name: 'Puesto de comida',
    area: @sj,
    latitude: -33.498024,
    longitude: -70.613468,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'puesto13',
    name: 'Puesto de comida',
    area: @sj,
    latitude: -33.498133,
    longitude: -70.613326,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'puesto14',
    name: 'Puesto de comida',
    area: @sj,
    latitude: -33.498422,
    longitude: -70.616321,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'puesto15',
    name: 'Puesto de comida',
    area: @sj,
    latitude: -33.498673,
    longitude: -70.615933,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'puesto16',
    name: 'Puesto de comida',
    area: @sj,
    latitude: -33.441339,
    longitude: -70.640445,
    floor: '1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'puesto17',
    name: 'Puesto de comida',
    area: @sj,
    latitude: -33.445916,
    longitude: -70.594023,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'puesto18',
    name: 'Puesto de comida',
    area: @sj,
    latitude: -33.419313,
    longitude: -70.617777,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'puesto2',
    name: 'Puesto de comida',
    area: @sj,
    latitude: -33.498133,
    longitude: -70.613326,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'puesto3',
    name: 'Puesto de comida',
    area: @sj,
    latitude: -33.498131,
    longitude: -70.610109,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'puesto4',
    name: 'Puesto de comida',
    area: @sj,
    latitude: -33.500001,
    longitude: -70.612645,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'puesto5',
    name: 'Puesto de comida',
    area: @sj,
    latitude: -33.497675,
    longitude: -70.609681,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'puesto6',
    name: 'Puesto de comida',
    area: @sj,
    latitude: -33.500081,
    longitude: -70.613177,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'puesto7',
    name: 'Puesto de comida',
    area: @sj,
    latitude: -33.498104,
    longitude: -70.610312,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'puesto8',
    name: 'Puesto de comida',
    area: @sj,
    latitude: -33.498191,
    longitude: -70.610032,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'puesto9',
    name: 'Puesto de comida',
    area: @sj,
    latitude: -33.500629,
    longitude: -70.610926,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'Break_hall',
    name: 'Punto Break',
    area: @sj,
    latitude: -33.498024,
    longitude: -70.613468,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'quick_deli_cc',
    name: 'QuickDeli',
    area: @sj,
    latitude: -33.441339,
    longitude: -70.640445,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'QIM',
    name: 'Química',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'qim_biologica',
    name: 'Química Biológica',
    area: @sj,
    latitude: -33.498727,
    longitude: -70.610705,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'qim_computacional',
    name: 'Química Teórica Computacional',
    area: @sj,
    latitude: -33.498747,
    longitude: -70.610851,
    floor: '2?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'R1',
    name: 'R1',
    area: @sj,
    latitude: -33.497225,
    longitude: -70.613910,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'R2',
    name: 'R2',
    area: @sj,
    latitude: -33.497260,
    longitude: -70.613914,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'R3',
    name: 'R3',
    area: @sj,
    latitude: -33.497310,
    longitude: -70.613903,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'R4',
    name: 'R4',
    area: @sj,
    latitude: -33.497315,
    longitude: -70.613897,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'R5',
    name: 'R5',
    area: @sj,
    latitude: -33.497386,
    longitude: -70.613892,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'R6',
    name: 'R6',
    area: @sj,
    latitude: -33.497443,
    longitude: -70.613891,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'rayos_X',
    name: 'Rayos X',
    area: @sj,
    latitude: -33.499558,
    longitude: -70.611290,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'recepcion_cc',
    name: 'Recepción',
    area: @sj,
    latitude: -33.498803,
    longitude: -70.613518,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'recepcion_ed',
    name: 'Recepción',
    area: @sj,
    latitude: -33.498160,
    longitude: -70.614603,
    floor: '1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'rectoria_cc',
    name: 'Rectoría',
    area: @sj,
    latitude: -33.440567,
    longitude: -70.640589,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'recursos_aprendiz_ed',
    name: 'Recursos Aprendizaje',
    area: @sj,
    latitude: -33.498163,
    longitude: -70.613738,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'REFECTORIO',
    name: 'Refectorio',
    area: @lc,
    latitude: -33.419566,
    longitude: -70.617850,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'S. ALFERO',
    name: 'S. Alfero',
    area: @lc,
    latitude: 0.0,
    longitude: 0.0,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'S11',
    name: 'S11',
    area: @sj,
    latitude: -33.496864,
    longitude: -70.613156,
    floor: '-1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'S12',
    name: 'S12',
    area: @sj,
    latitude: -33.496887,
    longitude: -70.613170,
    floor: '-1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'S13',
    name: 'S13',
    area: @sj,
    latitude: -33.497132,
    longitude: -70.613161,
    floor: '-1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'S14',
    name: 'S14',
    area: @sj,
    latitude: -33.497141,
    longitude: -70.613143,
    floor: '-1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'S15',
    name: 'S15',
    area: @sj,
    latitude: -33.497182,
    longitude: -70.613124,
    floor: '-1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'S16',
    name: 'S16',
    area: @sj,
    latitude: -33.497383,
    longitude: -70.613498,
    floor: '-1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'S18',
    name: 'S18',
    area: @sj,
    latitude: -33.496817,
    longitude: -70.613182,
    floor: '-1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'S19',
    name: 'S19',
    area: @sj,
    latitude: -33.497421,
    longitude: -70.613549,
    floor: '-1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'S2',
    name: 'S2',
    area: @sj,
    latitude: -33.496698,
    longitude: -70.614087,
    floor: '-1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'S20',
    name: 'S20',
    area: @sj,
    latitude: -33.497435,
    longitude: -70.613608,
    floor: '-1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'S3',
    name: 'S3',
    area: @sj,
    latitude: -33.496692,
    longitude: -70.613535,
    floor: '-1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'S4',
    name: 'S4',
    area: @sj,
    latitude: -33.496694,
    longitude: -70.613511,
    floor: '-1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'S5',
    name: 'S5',
    area: @sj,
    latitude: -33.496722,
    longitude: -70.613891,
    floor: '-1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'S6',
    name: 'S6',
    area: @sj,
    latitude: -33.496708,
    longitude: -70.613865,
    floor: '-1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'S7',
    name: 'S7',
    area: @sj,
    latitude: -33.496697,
    longitude: -70.613638,
    floor: '-1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'S8',
    name: 'S8',
    area: @sj,
    latitude: -33.496716,
    longitude: -70.613611,
    floor: '-1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'S9',
    name: 'S9',
    area: @sj,
    latitude: -33.496824,
    longitude: -70.613170,
    floor: '-1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'SALA PC',
    name: 'SALA PC',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'SALA101',
    name: 'SALA101',
    area: @sj,
    latitude: -33.419039,
    longitude: -70.618115,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'SALA102',
    name: 'SALA102',
    area: @sj,
    latitude: -33.418951,
    longitude: -70.618211,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'SALA103',
    name: 'SALA103',
    area: @sj,
    latitude: -33.418788,
    longitude: -70.618074,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'SALA104',
    name: 'SALA104',
    area: @sj,
    latitude: -33.418875,
    longitude: -70.617942,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'SALA11',
    name: 'SALA11',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'SALON SLGM',
    name: 'SALON SLGM',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'SALA 10',
    name: 'SALA 10',
    area: @lc,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'SALA 12',
    name: 'SALA 12',
    area: @lc,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'SALA 12',
    name: 'SALA 12',
    area: @cc,
    latitude: -33.440914,
    longitude: -70.640452,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'SALA 13',
    name: 'SALA 13',
    area: @cc,
    latitude: -33.440893,
    longitude: -70.640419,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'SALA 16',
    name: 'SALA 16',
    area: @cc,
    latitude: -33.440707,
    longitude: -70.640220,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'SALA 17',
    name: 'SALA 17',
    area: @cc,
    latitude: -33.440563,
    longitude: -70.640322,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'SALA2_3',
    name: 'Sala 2+3',
    area: @sj,
    latitude: -33.419265,
    longitude: -70.618428,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'SALA 20',
    name: 'SALA 20',
    area: @lc,
    latitude: -33.419571,
    longitude: -70.618607,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'SALA 21',
    name: 'SALA 21',
    area: @lc,
    latitude: -33.419548,
    longitude: -70.618573,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'SALA 22',
    name: 'SALA 22',
    area: @lc,
    latitude: -33.419525,
    longitude: -70.618548,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'SALA 23',
    name: 'SALA 23',
    area: @lc,
    latitude: -33.419499,
    longitude: -70.618520,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'SALA 24',
    name: 'SALA 24',
    area: @lc,
    latitude: -33.419473,
    longitude: -70.618496,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'SALA 25',
    name: 'SALA 25',
    area: @lc,
    latitude: -33.419452,
    longitude: -70.618480,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'SALA 26',
    name: 'SALA 26',
    area: @lc,
    latitude: -33.419424,
    longitude: -70.618443,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'SALA 30',
    name: 'SALA 30',
    area: @lc,
    latitude: -33.419602,
    longitude: -70.618646,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'SALA 31',
    name: 'SALA 31',
    area: @lc,
    latitude: -33.419571,
    longitude: -70.618607,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'SALA 32',
    name: 'SALA 32',
    area: @lc,
    latitude: -33.419548,
    longitude: -70.618573,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'SALA 33',
    name: 'SALA 33',
    area: @lc,
    latitude: -33.419525,
    longitude: -70.618548,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'SALA 34',
    name: 'SALA 34',
    area: @lc,
    latitude: -33.419499,
    longitude: -70.618520,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'SALA 35',
    name: 'SALA 35',
    area: @lc,
    latitude: -33.419473,
    longitude: -70.618496,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'SALA 36',
    name: 'SALA 36',
    area: @lc,
    latitude: -33.419452,
    longitude: -70.618480,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'SALA 37',
    name: 'SALA 37',
    area: @lc,
    latitude: -33.419424,
    longitude: -70.618443,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'SALA 38',
    name: 'SALA 38',
    area: @lc,
    latitude: -33.419393,
    longitude: -70.618427,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'SALA 39',
    name: 'SALA 39',
    area: @lc,
    latitude: -33.419398,
    longitude: -70.618452,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'SALA 7',
    name: 'SALA 7',
    area: @lc,
    latitude: -33.419801,
    longitude: -70.617692,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'SALA 8+9',
    name: 'SALA 8+9',
    area: @lc,
    latitude: -33.419745,
    longitude: -70.617717,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'sala_a_neco',
    name: 'Sala Andrés Necochea',
    area: @sj,
    latitude: -33.419192,
    longitude: -70.618529,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'SalaAyudantes_SA',
    name: 'Sala Ayudantes',
    area: @sj,
    latitude: -33.499006,
    longitude: -70.615169,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'sala_crivera',
    name: 'Sala Carlos Rivera',
    area: @sj,
    latitude: -33.499385,
    longitude: -70.610568,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'JGUZMAN1',
    name: 'Sala Jaime Guzmán 1',
    area: @cc,
    latitude: -33.440486,
    longitude: -70.640420,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'JGUZMAN2',
    name: 'Sala Jaime Guzmán 2',
    area: @cc,
    latitude: -33.440633,
    longitude: -70.640274,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'sala_luco',
    name: 'Sala Luco',
    area: @sj,
    latitude: -33.441678,
    longitude: -70.639273,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'PLIRA',
    name: 'Sala Pedro Lira Urquieta',
    area: @sj,
    latitude: -33.440707,
    longitude: -70.640166,
    floor: '1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'salaestudio1',
    name: 'Sala de Estudio',
    area: @sj,
    latitude: -33.497092,
    longitude: -70.611379,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'salaestudio10',
    name: 'Sala de Estudio',
    area: @sj,
    latitude: -33.498282,
    longitude: -70.610148,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'salaestudio11',
    name: 'Sala de Estudio',
    area: @sj,
    latitude: -33.498067,
    longitude: -70.609861,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'salaestudio12',
    name: 'Sala de Estudio',
    area: @sj,
    latitude: -33.497049,
    longitude: -70.609266,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'salaestudio13',
    name: 'Sala de Estudio',
    area: @sj,
    latitude: -33.500431,
    longitude: -70.610636,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'salaestudio14',
    name: 'Sala de Estudio',
    area: @sj,
    latitude: -33.500314,
    longitude: -70.610349,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'salaestudio15',
    name: 'Sala de Estudio',
    area: @sj,
    latitude: -33.498915,
    longitude: -70.610654,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'salaestudio16',
    name: 'Sala de Estudio',
    area: @sj,
    latitude: -33.498906,
    longitude: -70.613458,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'salaestudio2',
    name: 'Sala de Estudio',
    area: @sj,
    latitude: -33.496956,
    longitude: -70.611759,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'salaestudio3',
    name: 'Sala de Estudio',
    area: @sj,
    latitude: -33.498037,
    longitude: -70.614733,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'salaestudio4',
    name: 'Sala de Estudio',
    area: @sj,
    latitude: -33.497282,
    longitude: -70.613603,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'salaestudio5',
    name: 'Sala de Estudio',
    area: @sj,
    latitude: -33.499069,
    longitude: -70.613138,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'salaestudio6',
    name: 'Sala de Estudio',
    area: @sj,
    latitude: -33.498861,
    longitude: -70.613910,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'salaestudio7',
    name: 'Sala de Estudio',
    area: @sj,
    latitude: -33.499164,
    longitude: -70.612049,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'salaestudio8',
    name: 'Sala de Estudio',
    area: @sj,
    latitude: -33.500046,
    longitude: -70.613357,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'salaestudio9',
    name: 'Sala de Estudio',
    area: @sj,
    latitude: -33.499632,
    longitude: -70.612851,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'sala_profe_enf',
    name: 'Sala de Profesores',
    area: @sj,
    latitude: -33.498830,
    longitude: -70.613133,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'sala_trab_prac_cc_bio',
    name: 'Sala de Trabajos Prácticos',
    area: @sj,
    latitude: -33.441733,
    longitude: -70.639850,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'salaestudio17',
    name: 'Sala de estudio',
    area: @sj,
    latitude: -33.441566,
    longitude: -70.640499,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'salaestudio18',
    name: 'Sala de estudio',
    area: @sj,
    latitude: -33.441641,
    longitude: -70.639680,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'salaestudio19',
    name: 'Sala de estudio',
    area: @sj,
    latitude: -33.446282,
    longitude: -70.594125,
    floor: '1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'salaestudio20',
    name: 'Sala de estudio',
    area: @sj,
    latitude: -33.445500,
    longitude: -70.593583,
    floor: '1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'salaestudio21',
    name: 'Sala de estudio',
    area: @sj,
    latitude: -33.445589,
    longitude: -70.593302,
    floor: '1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'Multisala_ING',
    name: 'Sala de usos múltiples',
    area: @sj,
    latitude: -33.499535,
    longitude: -70.613223,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'multisala_sociales',
    name: 'Sala de usos múltiples',
    area: @sj,
    latitude: -33.498773,
    longitude: -70.609780,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'CS.SEM1',
    name: 'Salas Seminario',
    area: @sj,
    latitude: -33.500335,
    longitude: -70.610305,
    floor: '2?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'CS.SEM2',
    name: 'Salas Seminario',
    area: @sj,
    latitude: -33.500335,
    longitude: -70.610305,
    floor: '2?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'SaludEstudiantil_Hall',
    name: 'Salud Estudiantil',
    area: @sj,
    latitude: -33.497772,
    longitude: -70.613086,
    floor: '3',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'secret_academica',
    name: 'Secretaría Académica',
    area: @sj,
    latitude: -33.498501,
    longitude: -70.610128,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'seminario_h',
    name: 'Seminario',
    area: @sj,
    latitude: -33.496698,
    longitude: -70.614087,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'simulacion_h',
    name: 'Simulación',
    area: @sj,
    latitude: -33.497414,
    longitude: -70.613503,
    floor: '-1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'Sodexo_hall',
    name: 'Sodexo',
    area: @sj,
    latitude: -33.498054,
    longitude: -70.613483,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'almuerzo1',
    name: 'Sodexo',
    area: @sj,
    latitude: -33.496978,
    longitude: -70.610896,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'almuerzo10',
    name: 'Sodexo',
    area: @sj,
    latitude: -33.502811,
    longitude: -70.611480,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'almuerzo11',
    name: 'Sodexo',
    area: @sj,
    latitude: -33.441281,
    longitude: -70.640093,
    floor: '1-2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'almuerzo2',
    name: 'Sodexo',
    area: @sj,
    latitude: -33.497342,
    longitude: -70.613580,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'almuerzo3',
    name: 'Sodexo',
    area: @sj,
    latitude: -33.499087,
    longitude: -70.613693,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'almuerzo4',
    name: 'Sodexo',
    area: @sj,
    latitude: -33.499634,
    longitude: -70.613803,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'almuerzo5',
    name: 'Sodexo',
    area: @sj,
    latitude: -33.499729,
    longitude: -70.609654,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'almuerzo6',
    name: 'Sodexo',
    area: @sj,
    latitude: -33.496555,
    longitude: -70.609043,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'almuerzo7',
    name: 'Sodexo',
    area: @sj,
    latitude: -33.497868,
    longitude: -70.609826,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'almuerzo8',
    name: 'Sodexo',
    area: @sj,
    latitude: -33.498054,
    longitude: -70.613483,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'almuerzo9',
    name: 'Sodexo',
    area: @sj,
    latitude: -33.498272,
    longitude: -70.616351,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'sodexo_cc',
    name: 'Sodexo',
    area: @sj,
    latitude: -33.441281,
    longitude: -70.640093,
    floor: '1-2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'Sodexo_dpt',
    name: 'Sodexo (Pérgola)',
    area: @sj,
    latitude: -33.499729,
    longitude: -70.609654,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'starbucks_sociales',
    name: 'Starbucks',
    area: @sj,
    latitude: -33.498104,
    longitude: -70.610312,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'sub_dir_admin',
    name: 'Subdirección Administrativo',
    area: @sj,
    latitude: -33.497125,
    longitude: -70.611542,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'sub_dir_asuntos_estudiantiles',
    name: 'Subdirección de Asuntos Estudiantiles',
    area: @sj,
    latitude: -33.496938,
    longitude: -70.611674,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'subdir_pregrado_sociales',
    name: 'Subdirección de Pregrado',
    area: @sj,
    latitude: -33.498403,
    longitude: -70.610134,
    floor: '?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'banco3',
    name: 'Sucursal Santander',
    area: @sj,
    latitude: -33.441761,
    longitude: -70.640545,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'T1220',
    name: 'T1220',
    area: @sj,
    latitude: -33.498096,
    longitude: -70.614412,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'T1221',
    name: 'T1221',
    area: @sj,
    latitude: -33.498136,
    longitude: -70.614242,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'T2222',
    name: 'T2222',
    area: @sj,
    latitude: -33.498077,
    longitude: -70.614145,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'T2223',
    name: 'T2223',
    area: @sj,
    latitude: -33.498087,
    longitude: -70.614106,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'T3224',
    name: 'T3224',
    area: @sj,
    latitude: -33.498055,
    longitude: -70.613960,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'T3225',
    name: 'T3225',
    area: @sj,
    latitude: -33.498060,
    longitude: -70.613911,
    floor: '2',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'taller_vidrio',
    name: 'Taller de Vidrio',
    area: @sj,
    latitude: -33.499052,
    longitude: -70.610896,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'TEA',
    name: 'Teatro',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'teleduc_or',
    name: 'Teleduc',
    area: @sj,
    latitude: -33.446029,
    longitude: -70.594659,
    floor: '1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'templo_or',
    name: 'Templo Oriente',
    area: @sj,
    latitude: -33.445984,
    longitude: -70.593746,
    floor: '1?',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'TUNEL_ORIE',
    name: 'Túnel Oriente',
    area: @lc,
    latitude: -33.419707,
    longitude: -70.618311,
    floor: '1',
    information: 'Túnel oriente',
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'TUNEL_PONI',
    name: 'Túnel Poniente',
    area: @lc,
    latitude: -33.419707,
    longitude: -70.618311,
    floor: '1',
    information: 'Túnel Poniente.',
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'A.VERDES',
    name: 'Áreas verdes',
    area: @sj,
    latitude: 0.0,
    longitude: 0.0,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.new(
    identifier: 'optica_plasma',
    name: 'Óptica y Plasma',
    area: @sj,
    latitude: -33.499558,
    longitude: -70.611290,
    floor: '1',
    information: nil,
    zoom: 0.0,
    angle: 0.0,
    tilt: 0.0
    )
place.category_list = 'classroom'
place.save!

#-------------------------------------------------

Place.all.each do |p|
    if p.name.present?
        puts('newd place: ' +p.name)
    else
      puts p.inspect
      end
end