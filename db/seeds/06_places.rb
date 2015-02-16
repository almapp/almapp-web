puts('Creating places')

# == Schema Information
#
# Table name: places
#
#  id          :integer          not nulplace =l, primary keyplace.identifier = :string(255)      not place.# = name        :string(255#  service     :boolean          default(FALSE), not nul
#  area_id     :integer          not place.ul =#  area_type   :string(255)      place.nul
#  information :text             place.ult =
#  zoom        :float            place.ult(0.0 =#  angle       :float            place.ult(0.0
#  tilt        :floatplace.default(0 =0)
#  latitude    :float           default =0.0)
#  longitude   :float            default =0.0)
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

uc = Organization.where(abbreviation: 'UC').first_or_initialize
sj = Campus.where(abbreviation: 'SJ').first_or_initialize
cc = Campus.where(abbreviation: 'CC').first_or_initialize
lc = Campus.where(abbreviation: 'LC').first_or_initialize
co = Campus.where(abbreviation: 'OR').first_or_initialize
vr = Campus.where(abbreviation: 'VR').first_or_initialize
ex = Campus.where(abbreviation: 'EX').first_or_initialize
cdi = Building.where(abbreviation: 'CDI').first_or_initialize
hallsj = Building.where(abbreviation: 'HALL SJ').first_or_initialize
al = Building.where(abbreviation: 'AL').first_or_initialize
templo = Building.where(abbreviation: 'TEMPLO').first_or_initialize
agro = Faculty.where(abbreviation: 'AGC').first_or_initialize
fadeu = Faculty.where(abbreviation: 'FADEU').first_or_initialize
artes = Faculty.where(abbreviation: 'ART').first_or_initialize
bio = Faculty.where(abbreviation: 'BIO').first_or_initialize
eco = Faculty.where(abbreviation: 'EA').first_or_initialize
sociales = Faculty.where(abbreviation: 'SOC').first_or_initialize
comunicaciones = Faculty.where(abbreviation: 'COM').first_or_initialize
letras = Faculty.where(abbreviation: 'LET').first_or_initialize
derecho = Faculty.where(abbreviation: 'DE').first_or_initialize
educacion = Faculty.where(abbreviation: 'EDU').first_or_initialize
filosofia = Faculty.where(abbreviation: 'FIL').first_or_initialize
fisica = Faculty.where(abbreviation: 'FIS').first_or_initialize
historia = Faculty.where(abbreviation: 'HIS').first_or_initialize
construccion = Faculty.where(abbreviation: 'CCL').first_or_initialize
ingenieria = Faculty.where(abbreviation: 'ING').first_or_initialize
matematica = Faculty.where(abbreviation: 'MAT').first_or_initialize
enfermeria = Faculty.where(abbreviation: 'ENF').first_or_initialize
medicina = Faculty.where(abbreviation: 'MED').first_or_initialize
quimica = Faculty.where(abbreviation: 'QIM').first_or_initialize
teologia = Faculty.where(abbreviation: 'TTF').first_or_initialize
villarica = Faculty.where(abbreviation: 'VR').first_or_initialize
college = Faculty.where(abbreviation: 'D').first_or_initialize
a_agro = AcademicUnity.where(abbreviation: agro.abbreviation).first_or_initialize
a_arq = AcademicUnity.where(abbreviation: 'ARQ').first_or_initialize
a_art = AcademicUnity.where(abbreviation: 'ART').first_or_initialize
a_astro = AcademicUnity.where(abbreviation: 'ASTFIS').first_or_initialize
a_bio = AcademicUnity.where(abbreviation: 'BIO').first_or_initialize
a_salud = AcademicUnity.where(abbreviation: 'CS').first_or_initialize
a_eco = AcademicUnity.where(abbreviation: eco.abbreviation).first_or_initialize
a_politica = AcademicUnity.where(abbreviation: 'ICP').first_or_initialize
a_college = AcademicUnity.where(abbreviation: college.abbreviation).first_or_initialize
a_com = AcademicUnity.where(abbreviation: comunicaciones.abbreviation).first_or_initialize
a_cc = AcademicUnity.where(abbreviation: construccion.abbreviation).first_or_initialize
a_der = AcademicUnity.where(abbreviation: derecho.abbreviation).first_or_initialize
a_dno = AcademicUnity.where(abbreviation: 'DNO').first_or_initialize
a_edu = AcademicUnity.where(abbreviation: educacion.abbreviation).first_or_initialize
a_enf = AcademicUnity.where(abbreviation: enfermeria.abbreviation).first_or_initialize
a_est = AcademicUnity.where(abbreviation: 'EST').first_or_initialize
a_urb = AcademicUnity.where(abbreviation: 'IEU').first_or_initialize
a_fil = AcademicUnity.where(abbreviation: filosofia.abbreviation).first_or_initialize
a_fis = AcademicUnity.where(abbreviation: fisica.abbreviation).first_or_initialize
a_geo = AcademicUnity.where(abbreviation: 'GEO').first_or_initialize
a_his = AcademicUnity.where(abbreviation: 'HIS').first_or_initialize
a_ing = AcademicUnity.where(abbreviation: ingenieria.abbreviation).first_or_initialize
a_let = AcademicUnity.where(abbreviation: letras.abbreviation).first_or_initialize
a_mat = AcademicUnity.where(abbreviation: matematica.abbreviation).first_or_initialize
a_med = AcademicUnity.where(abbreviation: medicina.abbreviation).first_or_initialize
a_musica = AcademicUnity.where(abbreviation: 'MUC').first_or_initialize
a_odonto = AcademicUnity.where(abbreviation: 'ODO').first_or_initialize
a_psi = AcademicUnity.where(abbreviation: 'PSI').first_or_initialize
a_quim = AcademicUnity.where(abbreviation: quimica.abbreviation).first_or_initialize
a_socio = AcademicUnity.where(abbreviation: 'SOL').first_or_initialize
a_act = AcademicUnity.where(abbreviation: 'ACT').first_or_initialize
a_teo = AcademicUnity.where(abbreviation: teologia.abbreviation).first_or_initialize
a_social = AcademicUnity.where(abbreviation: 'TS').first_or_initialize
a_vr = AcademicUnity.where(abbreviation: villarica.abbreviation).first_or_initialize

place = Place.where(identifier: 'ENF_117').first_or_initialize
place.name = '117'
place.area = a_enf
place.latitude = -33.499013
place.longitude = -70.613039
place.floor = '1'
place.information = 'Asuntos Estudiantiles'
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'other'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'ENF_118').first_or_initialize
place.name = '118'
place.area = a_enf
place.latitude = -33.498915
place.longitude = -70.613041
place.floor = '1'
place.information = 'Centro de Simulación'
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'ENF_119').first_or_initialize
place.name = '119'
place.area = a_enf
place.latitude = -33.498937
place.longitude = -70.613039
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'ENF_120').first_or_initialize
place.name = '120'
place.area = a_enf
place.latitude = -33.499013
place.longitude = -70.613039
place.floor = '1'
place.information = 'Servicios Generales'
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'other'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'ENF_121').first_or_initialize
place.name = '121'
place.area = a_enf
place.latitude = -33.499013
place.longitude = -70.613039
place.floor = '1'
place.information = 'Sala de Alumnos'
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'other'
place.save!

#-------------------------------------------------

place = Place.where(identifier: '209').first_or_initialize
place.name = '209'
place.area = a_eco
place.latitude = -33.497114
place.longitude = -70.611485
place.floor = '2?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'comercial_211').first_or_initialize
place.name = '211'
place.area = a_eco
place.latitude = -33.497119
place.longitude = -70.611482
place.floor = '2?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: '218').first_or_initialize
place.name = '218'
place.area = a_eco
place.latitude = -33.496961
place.longitude = -70.611022
place.floor = '2?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'ENF_219').first_or_initialize
place.name = '219'
place.area = a_enf
place.latitude = -33.498915
place.longitude = -70.613092
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: '220').first_or_initialize
place.name = '220'
place.area = a_enf
place.latitude = -33.498912
place.longitude = -70.613125
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'comercial_220').first_or_initialize
place.name = '220'
place.area = a_eco
place.latitude = -33.496966
place.longitude = -70.611006
place.floor = '2?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'ENF_221').first_or_initialize
place.name = '221'
place.area = a_enf
place.latitude = -33.498901
place.longitude = -70.613162
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'ENF_222').first_or_initialize
place.name = '222'
place.area = a_enf
place.latitude = -33.499004
place.longitude = -70.613127
place.floor = '2'
place.information = 'Auditorio'
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: '225').first_or_initialize
place.name = '225'
place.area = a_eco
place.latitude = -33.497020
place.longitude = -70.610998
place.floor = '2?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'A-SALA1').first_or_initialize
place.name = 'A-SALA1'
place.area = a_arq
place.latitude = -33.419557
place.longitude = -70.618506
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'A-SALA17').first_or_initialize
place.name = 'A-SALA17'
place.area = lc
place.latitude = 0.0
place.longitude = 0.0
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'A-SALA2').first_or_initialize
place.name = 'A-SALA2'
place.area = a_arq
place.latitude = -33.419566
place.longitude = -70.618533
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'A-SALA3').first_or_initialize
place.name = 'A-SALA3'
place.area = a_arq
place.latitude = -33.419544
place.longitude = -70.618509
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'A-SALA4').first_or_initialize
place.name = 'A-SALA4'
place.area = a_arq
place.latitude = -33.419535
place.longitude = -70.618498
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'A1').first_or_initialize
place.name = 'A1'
place.area = a_ing
place.latitude = -33.500288
place.longitude = -70.612476
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'A2').first_or_initialize
place.name = 'A2'
place.area = a_ing
place.latitude = -33.500288
place.longitude = -70.612476
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'A3').first_or_initialize
place.name = 'A3'
place.area = a_ing
place.latitude = -33.500141
place.longitude = -70.612511
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'A4').first_or_initialize
place.name = 'A4'
place.area = a_ing
place.latitude = -33.500141
place.longitude = -70.612511
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'A5').first_or_initialize
place.name = 'A5'
place.area = a_ing
place.latitude = -33.499965
place.longitude = -70.612540
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'A6').first_or_initialize
place.name = 'A6'
place.area = a_ing
place.latitude = -33.499965
place.longitude = -70.612540
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'A7').first_or_initialize
place.name = 'A7'
place.area = a_ing
place.latitude = -33.499809
place.longitude = -70.612569
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'A8').first_or_initialize
place.name = 'A8'
place.area = a_ing
place.latitude = -33.499703
place.longitude = -70.612068
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'AG1').first_or_initialize
place.name = 'AG1'
place.area = a_agro
place.latitude = -33.497122
place.longitude = -70.609658
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'AG2').first_or_initialize
place.name = 'AG2'
place.area = a_agro
place.latitude = -33.497116
place.longitude = -70.609519
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'AG3').first_or_initialize
place.name = 'AG3'
place.area = a_agro
place.latitude = -33.497106
place.longitude = -70.609405
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'AG4').first_or_initialize
place.name = 'AG4'
place.area = a_agro
place.latitude = -33.496900
place.longitude = -70.609659
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'AG5').first_or_initialize
place.name = 'AG5'
place.area = a_agro
place.latitude = -33.496895
place.longitude = -70.609568
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'AG6').first_or_initialize
place.name = 'AG6'
place.area = a_agro
place.latitude = -33.496885
place.longitude = -70.609456
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'AGCV').first_or_initialize
place.name = 'AGCV'
place.area = a_agro
place.latitude = -33.496999
place.longitude = -70.609272
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'AL1').first_or_initialize
place.name = 'AL1'
place.area = al
place.latitude = -33.497508
place.longitude = -70.609004
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'AL2').first_or_initialize
place.name = 'AL2'
place.area = al
place.latitude = -33.497569
place.longitude = -70.608890
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'AL3').first_or_initialize
place.name = 'AL3'
place.area = al
place.latitude = -33.497710
place.longitude = -70.608824
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'AL4').first_or_initialize
place.name = 'AL4'
place.area = al
place.latitude = -33.497820
place.longitude = -70.608866
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'almacen_uc_cc').first_or_initialize
place.name = 'ALMACÉN UC'
place.area = cc
place.latitude = -33.440890
place.longitude = -70.640925
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'other'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'almacenuc_sociales').first_or_initialize
place.name = 'ALMACÉN UC'
place.area = sj
place.latitude = -33.498331
place.longitude = -70.610272
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'other'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'ALT').first_or_initialize
place.name = 'ALT'
place.area = al
place.latitude = -33.497917
place.longitude = -70.608998
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'AM1').first_or_initialize
place.name = 'AM1'
place.area = al
place.latitude = -33.498054
place.longitude = -70.609414
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'AM2').first_or_initialize
place.name = 'AM2'
place.area = al
place.latitude = -33.498102
place.longitude = -70.609270
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'AM3').first_or_initialize
place.name = 'AM3'
place.area = al
place.latitude = -33.498032
place.longitude = -70.609080
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'administracion_cc').first_or_initialize
place.name = 'Administración'
place.area = cc
place.latitude = -33.440929
place.longitude = -70.641053
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'other'
place.save!


#-------------------------------------------------

place = Place.where(identifier: 'almuerzo13').first_or_initialize
place.name = 'Almuerzo'
place.area = lc
place.latitude = -33.419581
place.longitude = -70.617635
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'food_lunch'
place.save!


#-------------------------------------------------

place = Place.where(identifier: 'Auditorio_SA').first_or_initialize
place.name = 'Auditorio'
place.area = a_ing
place.latitude = -33.499427
place.longitude = -70.615001
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'auditorio_Y').first_or_initialize
place.name = 'Auditorio'
place.area = a_ing
place.latitude = -33.499094
place.longitude = -70.612009
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'auditorio_acg').first_or_initialize
place.name = 'Auditorio'
place.area = a_agro
place.latitude = -33.497129
place.longitude = -70.609794
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'auditorio_cc').first_or_initialize
place.name = 'Auditorio'
place.area = a_cc
place.latitude = -33.498870
place.longitude = -70.613985
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'auditorio_college').first_or_initialize
place.name = 'Auditorio'
place.area = a_college
place.latitude = -33.500553
place.longitude = -70.611173
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'auditorio_h_1').first_or_initialize
place.name = 'Auditorio'
place.area = historia
place.latitude = -33.497383
place.longitude = -70.613498
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'auditorio_h_2').first_or_initialize
place.name = 'Auditorio'
place.area = historia
place.latitude = -33.496731
place.longitude = -70.614014
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'auditorio_h_fil').first_or_initialize
place.name = 'Auditorio'
place.area = a_fil
place.latitude = -33.496929
place.longitude = -70.614026
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'AUD_10').first_or_initialize
place.name = 'Auditorio 10'
place.area = cc
place.latitude = -33.440897
place.longitude = -70.640708
place.floor = '1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: '102').first_or_initialize
place.name = 'Auditorio 102'
place.area = a_eco
place.latitude = -33.496987
place.longitude = -70.611897
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: '103').first_or_initialize
place.name = 'Auditorio 103'
place.area = a_eco
place.latitude = -33.497118
place.longitude = -70.611773
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: '104').first_or_initialize
place.name = 'Auditorio 104'
place.area = a_eco
place.latitude = -33.496974
place.longitude = -70.611846
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: '105').first_or_initialize
place.name = 'Auditorio 105'
place.area = a_eco
place.latitude = -33.497096
place.longitude = -70.611623
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: '106').first_or_initialize
place.name = 'Auditorio 106'
place.area = a_eco
place.latitude = -33.496965
place.longitude = -70.611680
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: '107').first_or_initialize
place.name = 'Auditorio 107'
place.area = a_eco
place.latitude = -33.497096
place.longitude = -70.611588
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: '108').first_or_initialize
place.name = 'Auditorio 108'
place.area = a_eco
place.latitude = -33.496957
place.longitude = -70.611376
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: '109').first_or_initialize
place.name = 'Auditorio 109'
place.area = a_eco
place.latitude = -33.497087
place.longitude = -70.611487
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: '110').first_or_initialize
place.name = 'Auditorio 110'
place.area = a_eco
place.latitude = -33.496979
place.longitude = -70.611219
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: '111').first_or_initialize
place.name = 'Auditorio 111'
place.area = a_eco
place.latitude = -33.497105
place.longitude = -70.611338
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: '112').first_or_initialize
place.name = 'Auditorio 112'
place.area = a_eco
place.latitude = -33.496928
place.longitude = -70.611144
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: '113').first_or_initialize
place.name = 'Auditorio 113'
place.area = a_eco
place.latitude = -33.497094
place.longitude = -70.611230
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'AUD_21').first_or_initialize
place.name = 'Auditorio 21'
place.area = cc
place.latitude = -33.441155
place.longitude = -70.640779
place.floor = '2?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'AUD_24').first_or_initialize
place.name = 'Auditorio 24'
place.area = cc
place.latitude = -33.440707
place.longitude = -70.640166
place.floor = '2?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'ASILVA').first_or_initialize
place.name = 'Auditorio Alejandro Silva'
place.area = cc
place.latitude = -33.441262
place.longitude = -70.640143
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'CLARO').first_or_initialize
place.name = 'Auditorio Claro y Cia.'
place.area = cc
place.latitude = -33.441267
place.longitude = -70.640054
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'auditorio_joaco_luco').first_or_initialize
place.name = 'Auditorio Dr. Joaquín Luco'
place.area = cc
place.latitude = -33.441573
place.longitude = -70.640652
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'FD-101').first_or_initialize
place.name = 'Auditorio FD101'
place.area = cc
place.latitude = -33.441060
place.longitude = -70.640345
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'auditorio_luksic').first_or_initialize
place.name = 'Auditorio Luksic'
place.area = sj
place.latitude = -33.499906
place.longitude = -70.614197
place.floor = '-2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'auditorio_astro').first_or_initialize
place.name = 'Auditorio Ninoslav Bralic'
place.area = sj
place.latitude = -33.499841
place.longitude = -70.611156
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'AUD_N').first_or_initialize
place.name = 'Auditorio Norte'
place.area = lc
place.latitude = -33.419047
place.longitude = -70.617905
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'AUD_S').first_or_initialize
place.name = 'Auditorio Sur'
place.area = lc
place.latitude = -33.419085
place.longitude = -70.617850
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'auditorio_qim').first_or_initialize
place.name = 'Auditorio Victor Pillón'
place.area = sj
place.latitude = -33.499187
place.longitude = -70.610875
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'AULAMAGNA').first_or_initialize
place.name = 'Aula Magna'
place.area = al
place.latitude = -33.497807
place.longitude = -70.609146
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'aulamagna_cc').first_or_initialize
place.name = 'Aula Magna'
place.area = cc
place.latitude = -33.440946
place.longitude = -70.640001
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'aulamagna_comercial').first_or_initialize
place.name = 'Aula Magna'
place.area = al
place.latitude = -33.497077
place.longitude = -70.611969
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'B-101').first_or_initialize
place.name = 'B-101'
place.area = bio
place.latitude = -33.441678
place.longitude = -70.639548
place.floor = '1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'B-102').first_or_initialize
place.name = 'B-102'
place.area = bio
place.latitude = -33.441571
place.longitude = -70.639651
place.floor = '1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'B-103').first_or_initialize
place.name = 'B-103'
place.area = bio
place.latitude = -33.441528
place.longitude = -70.639691
place.floor = '1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'B11').first_or_initialize
place.name = 'B11'
place.area = a_ing
place.latitude = -33.500466
place.longitude = -70.613094
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'B12').first_or_initialize
place.name = 'B12'
place.area = a_ing
place.latitude = -33.500427
place.longitude = -70.613135
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'B13').first_or_initialize
place.name = 'B13'
place.area = a_ing
place.latitude = -33.500400
place.longitude = -70.613138
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'B14').first_or_initialize
place.name = 'B14'
place.area = a_ing
place.latitude = -33.500397
place.longitude = -70.612830
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'B15').first_or_initialize
place.name = 'B15'
place.area = a_ing
place.latitude = -33.500397
place.longitude = -70.612720
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'B16').first_or_initialize
place.name = 'B16'
place.area = a_ing
place.latitude = -33.500397
place.longitude = -70.612629
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'B17').first_or_initialize
place.name = 'B17'
place.area = a_ing
place.latitude = -33.500317
place.longitude = -70.612466
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'B18').first_or_initialize
place.name = 'B18'
place.area = a_ing
place.latitude = -33.500386
place.longitude = -70.612463
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'B-201').first_or_initialize
place.name = 'B-201'
place.area = bio
place.latitude = -33.441733
place.longitude = -70.639850
place.floor = '2?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'B-202').first_or_initialize
place.name = 'B-202'
place.area = bio
place.latitude = -33.441733
place.longitude = -70.639850
place.floor = '2?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'B-203').first_or_initialize
place.name = 'B-203'
place.area = bio
place.latitude = -33.441733
place.longitude = -70.639850
place.floor = '2?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'B21').first_or_initialize
place.name = 'B21'
place.area = a_ing
place.latitude = -33.500397
place.longitude = -70.612830
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'B22').first_or_initialize
place.name = 'B22'
place.area = a_ing
place.latitude = -33.500397
place.longitude = -70.612720
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'B23').first_or_initialize
place.name = 'B23'
place.area = a_ing
place.latitude = -33.500397
place.longitude = -70.612629
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'B24').first_or_initialize
place.name = 'B24'
place.area = a_ing
place.latitude = -33.500317
place.longitude = -70.612466
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'B25').first_or_initialize
place.name = 'B25'
place.area = a_ing
place.latitude = -33.500386
place.longitude = -70.612463
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'BC21').first_or_initialize
place.name = 'BC21'
place.area = a_ing
place.latitude = -33.500493
place.longitude = -70.613091
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'BC22').first_or_initialize
place.name = 'BC22'
place.area = a_ing
place.latitude = -33.500352
place.longitude = -70.613158
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'BC23').first_or_initialize
place.name = 'BC23'
place.area = a_ing
place.latitude = -33.500424
place.longitude = -70.613148
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'BC24').first_or_initialize
place.name = 'BC24'
place.area = a_ing
place.latitude = -33.500495
place.longitude = -70.613105
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'BC25').first_or_initialize
place.name = 'BC25'
place.area = a_ing
place.latitude = -33.500477
place.longitude = -70.613036
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'BC26').first_or_initialize
place.name = 'BC26'
place.area = a_ing
place.latitude = 0.0
place.longitude = 0.0
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'banco2').first_or_initialize
place.name = 'Banco Corpbanca'
place.area = sj
place.latitude = -33.498158
place.longitude = -70.610165
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bank'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'banco1').first_or_initialize
place.name = 'Banco Santander'
place.area = sj
place.latitude = -33.498113
place.longitude = -70.613188
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bank'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'reciclaje1').first_or_initialize
place.name = 'Basurero de reciclaje'
place.area = sj
place.latitude = -33.498941
place.longitude = -70.614578
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'reciclaje10').first_or_initialize
place.name = 'Basurero de reciclaje'
place.area = sj
place.latitude = -33.497743
place.longitude = -70.610668
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'reciclaje11').first_or_initialize
place.name = 'Basurero de reciclaje'
place.area = sj
place.latitude = -33.497524
place.longitude = -70.610201
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'reciclaje12').first_or_initialize
place.name = 'Basurero de reciclaje'
place.area = sj
place.latitude = -33.497152
place.longitude = -70.609128
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'reciclaje13').first_or_initialize
place.name = 'Basurero de reciclaje'
place.area = sj
place.latitude = -33.496848
place.longitude = -70.609203
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'reciclaje14').first_or_initialize
place.name = 'Basurero de reciclaje'
place.area = sj
place.latitude = -33.496736
place.longitude = -70.609209
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'reciclaje15').first_or_initialize
place.name = 'Basurero de reciclaje'
place.area = sj
place.latitude = -33.499022
place.longitude = -70.610890
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'reciclaje16').first_or_initialize
place.name = 'Basurero de reciclaje'
place.area = sj
place.latitude = -33.499423
place.longitude = -70.610082
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'reciclaje18').first_or_initialize
place.name = 'Basurero de reciclaje'
place.area = sj
place.latitude = -33.499857
place.longitude = -70.613125
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'reciclaje19').first_or_initialize
place.name = 'Basurero de reciclaje'
place.area = sj
place.latitude = -33.500213
place.longitude = -70.613154
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'reciclaje2').first_or_initialize
place.name = 'Basurero de reciclaje'
place.area = sj
place.latitude = -33.500369
place.longitude = -70.614493
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'reciclaje20').first_or_initialize
place.name = 'Basurero de reciclaje'
place.area = sj
place.latitude = -33.499814
place.longitude = -70.612603
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'reciclaje21').first_or_initialize
place.name = 'Basurero de reciclaje'
place.area = sj
place.latitude = -33.500300
place.longitude = -70.612507
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'reciclaje22').first_or_initialize
place.name = 'Basurero de reciclaje'
place.area = sj
place.latitude = -33.500450
place.longitude = -70.611239
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'reciclaje23').first_or_initialize
place.name = 'Basurero de reciclaje'
place.area = sj
place.latitude = -33.500572
place.longitude = -70.610761
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'reciclaje24').first_or_initialize
place.name = 'Basurero de reciclaje'
place.area = cc
place.latitude = -33.441271
place.longitude = -70.640637
place.floor = '1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'reciclaje25').first_or_initialize
place.name = 'Basurero de reciclaje'
place.area = lc
place.latitude = -33.419454
place.longitude = -70.618450
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'reciclaje26').first_or_initialize
place.name = 'Basurero de reciclaje'
place.area = sj
place.latitude = -33.499952
place.longitude = -70.614743
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'reciclaje27').first_or_initialize
place.name = 'Basurero de reciclaje'
place.area = sj
place.latitude = -33.500331
place.longitude = -70.612970
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'reciclaje28').first_or_initialize
place.name = 'Basurero de reciclaje'
place.area = cc
place.latitude = -33.441791
place.longitude = -70.640508
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'reciclaje29').first_or_initialize
place.name = 'Basurero de reciclaje'
place.area = cc
place.latitude = -33.441351
place.longitude = -70.640007
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'reciclaje3').first_or_initialize
place.name = 'Basurero de reciclaje'
place.area = sj
place.latitude = -33.499936
place.longitude = -70.613730
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'reciclaje30').first_or_initialize
place.name = 'Basurero de reciclaje'
place.area = lc
place.latitude = -33.419555
place.longitude = -70.618540
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'reciclaje31').first_or_initialize
place.name = 'Basurero de reciclaje'
place.area = lc
place.latitude = -33.419170
place.longitude = -70.617931
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'reciclaje32').first_or_initialize
place.name = 'Basurero de reciclaje'
place.area = lc
place.latitude = -33.418768
place.longitude = -70.618145
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'reciclaje33').first_or_initialize
place.name = 'Basurero de reciclaje'
place.area = co
place.latitude = -33.445798
place.longitude = -70.594330
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'reciclaje34').first_or_initialize
place.name = 'Basurero de reciclaje'
place.area = co
place.latitude = -33.445747
place.longitude = -70.593911
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'reciclaje35').first_or_initialize
place.name = 'Basurero de reciclaje'
place.area = co
place.latitude = -33.446120
place.longitude = -70.593421
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'reciclaje4').first_or_initialize
place.name = 'Basurero de reciclaje'
place.area = sj
place.latitude = -33.498056
place.longitude = -70.614263
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'reciclaje5').first_or_initialize
place.name = 'Basurero de reciclaje'
place.area = sj
place.latitude = -33.498190
place.longitude = -70.613578
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'reciclaje6').first_or_initialize
place.name = 'Basurero de reciclaje'
place.area = sj
place.latitude = -33.497435
place.longitude = -70.613783
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'reciclaje7').first_or_initialize
place.name = 'Basurero de reciclaje'
place.area = sj
place.latitude = -33.496800
place.longitude = -70.613379
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'reciclaje8').first_or_initialize
place.name = 'Basurero de reciclaje'
place.area = sj
place.latitude = -33.496805
place.longitude = -70.611423
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'reciclaje9').first_or_initialize
place.name = 'Basurero de reciclaje'
place.area = sj
place.latitude = -33.496819
place.longitude = -70.610955
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'trash'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano1').first_or_initialize
place.name = 'Baño'
place.area = a_salud
place.latitude = -33.500279
place.longitude = -70.609976
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano10').first_or_initialize
place.name = 'Baño'
place.area = a_ing
place.latitude = -33.499711
place.longitude = -70.612989
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano12').first_or_initialize
place.name = 'Baño'
place.area = a_eco
place.latitude = -33.497038
place.longitude = -70.611095
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano13').first_or_initialize
place.name = 'Baño'
place.area = a_eco
place.latitude = -33.497129
place.longitude = -70.611926
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano14').first_or_initialize
place.name = 'Baño'
place.area = cdi
place.latitude = -33.497770
place.longitude = -70.615337
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano15').first_or_initialize
place.name = 'Baño'
place.area = a_edu
place.latitude = -33.498136
place.longitude = -70.614242
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano16').first_or_initialize
place.name = 'Baño'
place.area = a_edu
place.latitude = -33.498133
place.longitude = -70.614249
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano17').first_or_initialize
place.name = 'Baño'
place.area = a_edu
place.latitude = -33.498224
place.longitude = -70.614968
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano18').first_or_initialize
place.name = 'Baño'
place.area = a_enf
place.latitude = -33.498957
place.longitude = -70.613033
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano19').first_or_initialize
place.name = 'Baño'
place.area = templo
place.latitude = -33.498051
place.longitude = -70.611167
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano2').first_or_initialize
place.name = 'Baño'
place.area = historia
place.latitude = -33.496731
place.longitude = -70.614014
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano20').first_or_initialize
place.name = 'Baño'
place.area = a_cc
place.latitude = -33.498852
place.longitude = -70.613845
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano21').first_or_initialize
place.name = 'Baño'
place.area = a_cc
place.latitude = -33.499114
place.longitude = -70.614356
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano22').first_or_initialize
place.name = 'Baño'
place.area = a_ing
place.latitude = -33.500518
place.longitude = -70.612970
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano23').first_or_initialize
place.name = 'Baño'
place.area = a_ing
place.latitude = -33.500462
place.longitude = -70.612518
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano24').first_or_initialize
place.name = 'Baño'
place.area = a_ing
place.latitude = -33.500044
place.longitude = -70.613149
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano25').first_or_initialize
place.name = 'Baño'
place.area = a_teo
place.latitude = -33.497709
place.longitude = -70.610613
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano26').first_or_initialize
place.name = 'Baño'
place.area = a_teo
place.latitude = -33.497928
place.longitude = -70.610600
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano27').first_or_initialize
place.name = 'Baño'
place.area = sociales
place.latitude = -33.497452
place.longitude = -70.610290
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano28').first_or_initialize
place.name = 'Baño'
place.area = sociales
place.latitude = -33.498804
place.longitude = -70.610091
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano29').first_or_initialize
place.name = 'Baño'
place.area = sociales
place.latitude = -33.499384
place.longitude = -70.610088
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano3').first_or_initialize
place.name = 'Baño'
place.area = a_salud
place.latitude = -33.500274
place.longitude = -70.610345
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano30').first_or_initialize
place.name = 'Baño'
place.area = al
place.latitude = -33.498074
place.longitude = -70.609122
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano31').first_or_initialize
place.name = 'Baño'
place.area = a_agro
place.latitude = -33.496880
place.longitude = -70.609526
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano32').first_or_initialize
place.name = 'Baño'
place.area = a_agro
place.latitude = -33.497108
place.longitude = -70.609505
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano33').first_or_initialize
place.name = 'Baño'
place.area = a_college
place.latitude = -33.500560
place.longitude = -70.611205
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano34').first_or_initialize
place.name = 'Baño'
place.area = sj
place.latitude = -33.500639
place.longitude = -70.610794
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano35').first_or_initialize
place.name = 'Baño'
place.area = hallsj
place.latitude = -33.498191
place.longitude = -70.613487
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano36').first_or_initialize
place.name = 'Baño'
place.area = cc
place.latitude = -33.441206
place.longitude = -70.640170
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano37').first_or_initialize
place.name = 'Baño'
place.area = cc
place.latitude = -33.440979
place.longitude = -70.640580
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano38').first_or_initialize
place.name = 'Baño'
place.area = cc
place.latitude = -33.441534
place.longitude = -70.640684
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano39').first_or_initialize
place.name = 'Baño'
place.area = cc
place.latitude = -33.440989
place.longitude = -70.640544
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano4').first_or_initialize
place.name = 'Baño'
place.area = ingenieria
place.latitude = -33.499226
place.longitude = -70.611995
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano40').first_or_initialize
place.name = 'Baño'
place.area = cc
place.latitude = -33.441248
place.longitude = -70.640934
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano41').first_or_initialize
place.name = 'Baño'
place.area = co
place.latitude = -33.445844
place.longitude = -70.594468
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano42').first_or_initialize
place.name = 'Baño'
place.area = co
place.latitude = -33.445003
place.longitude = -70.593557
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano43').first_or_initialize
place.name = 'Baño'
place.area = co
place.latitude = -33.446249
place.longitude = -70.593734
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano44').first_or_initialize
place.name = 'Baño'
place.area = co
place.latitude = -33.445881
place.longitude = -70.594410
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano45').first_or_initialize
place.name = 'Baño'
place.area = fadeu
place.latitude = -33.419679
place.longitude = -70.618642
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano46').first_or_initialize
place.name = 'Baño'
place.area = fadeu
place.latitude = -33.419240
place.longitude = -70.617769
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano47').first_or_initialize
place.name = 'Baño'
place.area = a_dno
place.latitude = -33.418811
place.longitude = -70.618033
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano48').first_or_initialize
place.name = 'Baño'
place.area = a_arq
place.latitude = -33.419443
place.longitude = -70.618588
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano49').first_or_initialize
place.name = 'Baño'
place.area = fadeu
place.latitude = -33.420053
place.longitude = -70.618183
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano5').first_or_initialize
place.name = 'Baño'
place.area = historia
place.latitude = -33.497407
place.longitude = -70.613161
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano6').first_or_initialize
place.name = 'Baño'
place.area = historia
place.latitude = -33.496790
place.longitude = -70.613154
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano7').first_or_initialize
place.name = 'Baño'
place.area = sj
place.latitude = -33.500563
place.longitude = -70.611273
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano8').first_or_initialize
place.name = 'Baño'
place.area = sociales
place.latitude = -33.498134
place.longitude = -70.610171
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bano9').first_or_initialize
place.name = 'Baño'
place.area = a_ing
place.latitude = -33.499577
place.longitude = -70.615009
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'bath'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'biblio_biomed').first_or_initialize
place.name = 'Biblioteca Biomédica'
place.area = cc
place.latitude = -33.441312
place.longitude = -70.640322
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'biblio_der_com').first_or_initialize
place.name = 'Biblioteca Derecho y Comunicaciones'
place.area = cc
place.latitude = -33.441325
place.longitude = -70.640317
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'biblio_contador').first_or_initialize
place.name = 'Biblioteca Lo Contador'
place.area = lc
place.latitude = -33.419372
place.longitude = -70.618268
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'biblio_oriente').first_or_initialize
place.name = 'Biblioteca Oriente'
place.area = co
place.latitude = -33.445472
place.longitude = -70.593408
place.floor = '1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'biblio_cs').first_or_initialize
place.name = 'Biblioteca de Ciencias Sociales'
place.area = sociales
place.latitude = -33.498421
place.longitude = -70.609898
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'biblio_hum').first_or_initialize
place.name = 'Biblioteca de Humanidades'
place.area = historia
place.latitude = -33.497495
place.longitude = -70.613940
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'biblio_mat').first_or_initialize
place.name = 'Biblioteca de Matemática'
place.area = matematica
place.latitude = -33.499831
place.longitude = -70.610784
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'biblio_teo').first_or_initialize
place.name = 'Biblioteca de Teología'
place.area = a_teo
place.latitude = -33.497838
place.longitude = -70.610826
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'biohuerto_acg').first_or_initialize
place.name = 'Biohuerto'
place.area = sj
place.latitude = -33.496081
place.longitude = -70.607884
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bodega_cs').first_or_initialize
place.name = 'Bodega'
place.area = sj
place.latitude = -33.500496
place.longitude = -70.610034
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'CARAUC').first_or_initialize
place.name = 'CARA UC'
place.area = sj
place.latitude = -33.497909
place.longitude = -70.608993
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'cauc').first_or_initialize
place.name = 'CAUC'
place.area = sj
place.latitude = -33.499200
place.longitude = -70.612130
place.floor = '3'
place.information = 'Comisión de Acogida'
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'CC10').first_or_initialize
place.name = 'CC10'
place.area = a_cc
place.latitude = -33.498967
place.longitude = -70.613442
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'CC201').first_or_initialize
place.name = 'CC201'
place.area = a_cc
place.latitude = -33.498928
place.longitude = -70.613394
place.floor = '2?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'CC202').first_or_initialize
place.name = 'CC202'
place.area = a_cc
place.latitude = -33.499013
place.longitude = -70.613368
place.floor = '2?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'CC24').first_or_initialize
place.name = 'CC24'
place.area = a_cc
place.latitude = -33.498838
place.longitude = -70.613738
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'CC25').first_or_initialize
place.name = 'CC25'
place.area = a_cc
place.latitude = -33.498852
place.longitude = -70.613775
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'CC27').first_or_initialize
place.name = 'CC27'
place.area = a_cc
place.latitude = -33.498870
place.longitude = -70.614130
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'CC28').first_or_initialize
place.name = 'CC28'
place.area = a_cc
place.latitude = -33.498888
place.longitude = -70.614168
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'CDI-102').first_or_initialize
place.name = 'CDI-102'
place.area = cdi
place.latitude = -33.497796
place.longitude = -70.615314
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'CDI-103').first_or_initialize
place.name = 'CDI-103'
place.area = cdi
place.latitude = -33.497796
place.longitude = -70.615314
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'CDI-201').first_or_initialize
place.name = 'CDI-201'
place.area = cdi
place.latitude = -33.497796
place.longitude = -70.615314
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'CDI-202').first_or_initialize
place.name = 'CDI-202'
place.area = cdi
place.latitude = -33.497796
place.longitude = -70.615314
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'CECOM').first_or_initialize
place.name = 'CECOM'
place.area = a_com
place.latitude = -33.441366
place.longitude = -70.640815
place.floor = '1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'other'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'CED').first_or_initialize
place.name = 'CED'
place.area = a_der
place.latitude = -33.418967
place.longitude = -70.618195
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'other'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'ceps').first_or_initialize
place.name = 'CEPS'
place.area = a_psi
place.latitude = -33.497855
place.longitude = -70.609893
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'other'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'cequc').first_or_initialize
place.name = 'CEQUC'
place.area = sj
place.latitude = -33.499102
place.longitude = -70.610713
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'COM307').first_or_initialize
place.name = 'COM307'
place.area = a_com
place.latitude = -33.441343
place.longitude = -70.640916
place.floor = '3?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'COM308').first_or_initialize
place.name = 'COM308'
place.area = a_com
place.latitude = -33.441368
place.longitude = -70.640897
place.floor = '3?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'COM309').first_or_initialize
place.name = 'COM309'
place.area = a_com
place.latitude = -33.441368
place.longitude = -70.640897
place.floor = '3?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0


place = Place.where(identifier: 'COM310').first_or_initialize
place.name = 'COM310'
place.area = a_com
place.latitude = -33.441444
place.longitude = -70.640729
place.floor = '3?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'crisol1').first_or_initialize
place.name = 'CRISOL'
place.area = a_edu
place.latitude = -33.498139
place.longitude = -70.613804
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'computers, printer'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'crisol2').first_or_initialize
place.name = 'CRISOL'
place.area = sociales
place.latitude = -33.497836
place.longitude = -70.610202
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'computers, printer'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'crisol3').first_or_initialize
place.name = 'CRISOL'
place.area = sociales
place.latitude = -33.497959
place.longitude = -70.610188
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'computers, printer'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'crisol4').first_or_initialize
place.name = 'CRISOL'
place.area = a_ing
place.latitude = -33.499133
place.longitude = -70.612116
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'computers, printer'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'crisol5').first_or_initialize
place.name = 'CRISOL'
place.area = co
place.latitude = -33.445834
place.longitude = -70.594471
place.floor = '1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'computers, printer'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'crisol6').first_or_initialize
place.name = 'CRISOL Piwonka'
place.area = lc
place.latitude = -33.419267
place.longitude = -70.618316
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'computers, printer'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'crisol7').first_or_initialize
place.name = 'CRISOL Alfero'
place.area = lc
place.latitude = -33.419254
place.longitude = -70.618064
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'computers, printer'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'CS-101').first_or_initialize
place.name = 'CS-101'
place.area = a_salud
place.latitude = -33.500629
place.longitude = -70.610383
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'CS-102').first_or_initialize
place.name = 'CS-102'
place.area = a_salud
place.latitude = -33.500645
place.longitude = -70.610194
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'CS-201').first_or_initialize
place.name = 'CS-201'
place.area = a_salud
place.latitude = -33.500629
place.longitude = -70.610410
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'CS-202').first_or_initialize
place.name = 'CS-202'
place.area = a_salud
place.latitude = -33.500616
place.longitude = -70.610344
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'CS-203').first_or_initialize
place.name = 'CS-203'
place.area = a_salud
place.latitude = -33.500640
place.longitude = -70.610269
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'CS-204').first_or_initialize
place.name = 'CS-204'
place.area = a_salud
place.latitude = -33.500640
place.longitude = -70.610192
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'CS-301').first_or_initialize
place.name = 'CS-301'
place.area = a_salud
place.latitude = -33.500629
place.longitude = -70.610410
place.floor = '3'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'CS-302').first_or_initialize
place.name = 'CS-302'
place.area = a_salud
place.latitude = -33.500616
place.longitude = -70.610344
place.floor = '3'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'CS-303').first_or_initialize
place.name = 'CS-303'
place.area = a_salud
place.latitude = -33.500640
place.longitude = -70.610269
place.floor = '3'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'CS-304').first_or_initialize
place.name = 'CS-304'
place.area = a_salud
place.latitude = -33.500640
place.longitude = -70.610192
place.floor = '3'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'CS-401').first_or_initialize
place.name = 'CS-401'
place.area = a_salud
place.latitude = -33.500629
place.longitude = -70.610410
place.floor = '4'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'CS-402').first_or_initialize
place.name = 'CS-402'
place.area = a_salud
place.latitude = -33.500616
place.longitude = -70.610344
place.floor = '4'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'CS-403').first_or_initialize
place.name = 'CS-403'
place.area = a_salud
place.latitude = -33.500640
place.longitude = -70.610269
place.floor = '4'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'CS-404').first_or_initialize
place.name = 'CS-404'
place.area = a_salud
place.latitude = -33.500640
place.longitude = -70.610192
place.floor = '4'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'CS-405').first_or_initialize
place.name = 'CS-405'
place.area = a_salud
place.latitude = -33.500669
place.longitude = -70.610021
place.floor = '4'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'cajero1').first_or_initialize
place.name = 'Cajero'
place.area = sj
place.latitude = -33.498794
place.longitude = -70.615907
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'cash_machine'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'cajero2').first_or_initialize
place.name = 'Cajero'
place.area = a_eco
place.latitude = -33.497082
place.longitude = -70.611207
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'cash_machine'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'cajero3').first_or_initialize
place.name = 'Cajero'
place.area = ingenieria
place.latitude = -33.499624
place.longitude = -70.613563
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'cash_machine'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'cajero4').first_or_initialize
place.name = 'Cajero'
place.area = hallsj
place.latitude = -33.498126
place.longitude = -70.613097
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'cash_machine'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'cajero5').first_or_initialize
place.name = 'Cajero'
place.area = sociales
place.latitude = -33.498168
place.longitude = -70.610231
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'cash_machine'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'cajero6').first_or_initialize
place.name = 'Cajero'
place.area = cc
place.latitude = -33.441244
place.longitude = -70.640889
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'cash_machine'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'cajero7').first_or_initialize
place.name = 'Cajero'
place.area = co
place.latitude = -33.446624
place.longitude = -70.594578
place.floor = '1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'cash_machine'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'cajero8').first_or_initialize
place.name = 'Cajero'
place.area = fadeu
place.latitude = -33.419508
place.longitude = -70.618057
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'cash_machine'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'campus_saludable').first_or_initialize
place.name = 'Campus Saludable'
place.area = sj
place.latitude = -33.497909
place.longitude = -70.608993
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'other'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'capellan_cc').first_or_initialize
place.name = 'Capellán'
place.area = sj
place.latitude = -33.440825
place.longitude = -70.640773
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'capilla_lc').first_or_initialize
place.name = 'Capilla'
place.area = lc
place.latitude = -33.420019
place.longitude = -70.618267
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'other'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'CAPILLA').first_or_initialize
place.name = 'Capilla (Sala)'
place.area = a_arq
place.latitude = -33.419946
place.longitude = -70.618384
place.floor = '1'
place.information = 'Aquí hacen clases'
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'capilla_or').first_or_initialize
place.name = 'Capilla Oriente'
place.area = co
place.latitude = -33.446352
place.longitude = -70.593928
place.floor = '1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'other'
place.save!

#-------------------------------------------------


place = Place.where(identifier: 'central_apuntes_enf').first_or_initialize
place.name = 'Central de Apuntes'
place.area = a_enf
place.latitude = -33.498854
place.longitude = -70.613187
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'photocopy'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'cearq').first_or_initialize
place.name = 'Centro de Alumnos de Arquitectura'
place.area = a_arq
place.latitude = -33.419496
place.longitude = -70.618523
place.floor = '1'
place.information = 'CEARQ'
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'other'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'ce_college').first_or_initialize
place.name = 'Centro de Alumnos de College'
place.area = a_college
place.latitude = -33.500660
place.longitude = -70.610596
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'other'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'cai').first_or_initialize
place.name = 'Centro de Alumnos de Ingeniería (CAI)'
place.area = a_ing
place.latitude = -33.500030
place.longitude = -70.613225
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'other'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'centroalumnos_med').first_or_initialize
place.name = 'Centro de Alumnos de Medicina'
place.area = a_med
place.latitude = -33.441425
place.longitude = -70.640525
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'other'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'ca_teo').first_or_initialize
place.name = 'Centro de Alumnos de Teología'
place.area = a_teo
place.latitude = -33.497716
place.longitude = -70.610729
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'other'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'centro_des_docente').first_or_initialize
place.name = 'Centro de Desarrollo Docente'
place.area = sj
place.latitude = -33.499173
place.longitude = -70.612111
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'other'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'CEEP').first_or_initialize
place.name = 'Centro de Estudiantes de Educación de Párvulos'
place.area = a_edu
place.latitude = -33.498147
place.longitude = -70.613745
place.floor = '1'
place.information = 'CEEP'
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'other'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'centro_prev_cancer_diges').first_or_initialize
place.name = 'Centro de Prevención de Cáncer Digistivo'
place.area = sj
place.latitude = -33.441546
place.longitude = -70.640279
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'ciencias_materiales').first_or_initialize
place.name = 'Ciencia de los Materiales'
place.area = sj
place.latitude = -33.499558
place.longitude = -70.611290
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'BIO').first_or_initialize
place.name = 'Ciencias Biológicas'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'D').first_or_initialize
place.name = 'College'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'college_uc').first_or_initialize
place.name = 'College UC'
place.area = sj
place.latitude = -33.500422
place.longitude = -70.611161
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'luksic').first_or_initialize
place.name = 'Complejo Andrónico Luksic'
place.area = sj
place.latitude = -33.499906
place.longitude = -70.614197
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'Computacion_SA').first_or_initialize
place.name = 'Computación'
place.area = sj
place.latitude = -33.499145
place.longitude = -70.615123
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'pc1').first_or_initialize
place.name = 'Computadores'
place.area = sj
place.latitude = -33.499145
place.longitude = -70.615123
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'pc10').first_or_initialize
place.name = 'Computadores'
place.area = sj
place.latitude = -33.498915
place.longitude = -70.610695
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'pc11').first_or_initialize
place.name = 'Computadores'
place.area = sj
place.latitude = -33.441303
place.longitude = -70.640081
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'pc2').first_or_initialize
place.name = 'Computadores'
place.area = sj
place.latitude = -33.496921
place.longitude = -70.611203
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'pc3').first_or_initialize
place.name = 'Computadores'
place.area = sj
place.latitude = -33.499045
place.longitude = -70.613138
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'pc4').first_or_initialize
place.name = 'Computadores'
place.area = sj
place.latitude = -33.498967
place.longitude = -70.613442
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'pc5').first_or_initialize
place.name = 'Computadores'
place.area = sj
place.latitude = -33.499683
place.longitude = -70.613110
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'pc6').first_or_initialize
place.name = 'Computadores'
place.area = sj
place.latitude = -33.499674
place.longitude = -70.612956
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'pc7').first_or_initialize
place.name = 'Computadores'
place.area = sj
place.latitude = -33.500404
place.longitude = -70.611025
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'pc8').first_or_initialize
place.name = 'Computadores'
place.area = sj
place.latitude = -33.500620
place.longitude = -70.610785
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'pc9').first_or_initialize
place.name = 'Computadores'
place.area = sj
place.latitude = -33.500547
place.longitude = -70.610029
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'COM').first_or_initialize
place.name = 'Comunicaciones'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'correspondencia_cc').first_or_initialize
place.name = 'Correspondencia'
place.area = sj
place.latitude = -33.440899
place.longitude = -70.641083
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'almuerzo12').first_or_initialize
place.name = 'Cómida'
place.area = sj
place.latitude = -33.445119
place.longitude = -70.593593
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'D101').first_or_initialize
place.name = 'D101'
place.area = sj
place.latitude = -33.500558
place.longitude = -70.611208
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'D104').first_or_initialize
place.name = 'D104'
place.area = sj
place.latitude = -33.500515
place.longitude = -70.611019
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'D201').first_or_initialize
place.name = 'D201'
place.area = sj
place.latitude = -33.500563
place.longitude = -70.611268
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'D202').first_or_initialize
place.name = 'D202'
place.area = sj
place.latitude = -33.500563
place.longitude = -70.611241
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'D203').first_or_initialize
place.name = 'D203'
place.area = sj
place.latitude = -33.500587
place.longitude = -70.611018
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'D204').first_or_initialize
place.name = 'D204'
place.area = sj
place.latitude = -33.500598
place.longitude = -70.610932
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'D301').first_or_initialize
place.name = 'D301'
place.area = sj
place.latitude = -33.500581
place.longitude = -70.611225
place.floor = '3'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'D302').first_or_initialize
place.name = 'D302'
place.area = sj
place.latitude = -33.500579
place.longitude = -70.611166
place.floor = '3'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'D303').first_or_initialize
place.name = 'D303'
place.area = sj
place.latitude = -33.500590
place.longitude = -70.611072
place.floor = '3'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'D304').first_or_initialize
place.name = 'D304'
place.area = sj
place.latitude = -33.500607
place.longitude = -70.610919
place.floor = '3'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'D305').first_or_initialize
place.name = 'D305'
place.area = sj
place.latitude = -33.500618
place.longitude = -70.610737
place.floor = '3'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'D306').first_or_initialize
place.name = 'D306'
place.area = sj
place.latitude = -33.500633
place.longitude = -70.610636
place.floor = '3'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'DAE').first_or_initialize
place.name = 'DAE'
place.area = sj
place.latitude = -33.497909
place.longitude = -70.608993
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'dae_cc').first_or_initialize
place.name = 'DAE'
place.area = sj
place.latitude = -33.441281
place.longitude = -70.640251
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'DARA').first_or_initialize
place.name = 'DARA'
place.area = sj
place.latitude = -33.497763
place.longitude = -70.613103
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'DASE').first_or_initialize
place.name = 'DASE'
place.area = sj
place.latitude = -33.497840
place.longitude = -70.613116
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'DECON').first_or_initialize
place.name = 'DECON'
place.area = sj
place.latitude = -33.497389
place.longitude = -70.607615
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'DICTUC_SA').first_or_initialize
place.name = 'DICTUD'
place.area = sj
place.latitude = -33.498952
place.longitude = -70.614970
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'def_solidos').first_or_initialize
place.name = 'Defectos en Sólidos'
place.area = sj
place.latitude = -33.499558
place.longitude = -70.611290
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'DCC').first_or_initialize
place.name = 'Departamento Ciencias de la Computación (DCC)'
place.area = sj
place.latitude = -33.498974
place.longitude = -70.615160
place.floor = '4'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'dir_asist_eco_cc').first_or_initialize
place.name = 'Departamento de Asistencia Económica'
place.area = sj
place.latitude = -33.441110
place.longitude = -70.640691
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'dpto_farmacia').first_or_initialize
place.name = 'Departamento de Farmacia'
place.area = sj
place.latitude = -33.498839
place.longitude = -70.610867
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'dpto_fisico_qim').first_or_initialize
place.name = 'Departamento de Físico-Química'
place.area = sj
place.latitude = -33.499187
place.longitude = -70.611589
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'dpto_matricula_cc').first_or_initialize
place.name = 'Departamento de Matrícula'
place.area = sj
place.latitude = -33.441110
place.longitude = -70.640691
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'dpto_qim_inorganica').first_or_initialize
place.name = 'Departamento de Química Inorgánica'
place.area = sj
place.latitude = -33.498859
place.longitude = -70.611214
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'dir_reg_servi_cc').first_or_initialize
place.name = 'Departamento de Registros y Servicios'
place.area = sj
place.latitude = -33.441110
place.longitude = -70.640691
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'DPT').first_or_initialize
place.name = 'Deportes'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'DEC').first_or_initialize
place.name = 'Derecho'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'dir_ENF').first_or_initialize
place.name = 'Dirección'
place.area = sj
place.latitude = -33.499027
place.longitude = -70.613004
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'dir_cc').first_or_initialize
place.name = 'Dirección'
place.area = sj
place.latitude = -33.498762
place.longitude = -70.613470
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'dir_academica_qim').first_or_initialize
place.name = 'Dirección Académica'
place.area = sj
place.latitude = -33.498754
place.longitude = -70.610875
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'dir_sist_bibliotecas').first_or_initialize
place.name = 'Dirección Sistema de Bibliotecas'
place.area = sj
place.latitude = -33.498857
place.longitude = -70.609777
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'dir_docencia_fis').first_or_initialize
place.name = 'Dirección de Docencia'
place.area = sj
place.latitude = -33.499468
place.longitude = -70.610958
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'dir_informatica').first_or_initialize
place.name = 'Dirección de Informática'
place.area = sj
place.latitude = -33.499103
place.longitude = -70.612076
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'Direc_pregrado_ing').first_or_initialize
place.name = 'Dirección de Pregrado'
place.area = sj
place.latitude = -33.499616
place.longitude = -70.612735
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'dir_pregrado_cc').first_or_initialize
place.name = 'Dirección de Pregrado'
place.area = sj
place.latitude = -33.441825
place.longitude = -70.639324
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'dir_posgrado').first_or_initialize
place.name = 'Dirección de Prosgrado'
place.area = sj
place.latitude = -33.441690
place.longitude = -70.639266
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'DIS').first_or_initialize
place.name = 'Diseño'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'doc_lc').first_or_initialize
place.name = 'Doctorados'
place.area = sj
place.latitude = -33.418620
place.longitude = -70.616706
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'domo1').first_or_initialize
place.name = 'Domo'
place.area = sj
place.latitude = -33.499343
place.longitude = -70.613116
place.floor = '1'
place.information = 'Domo'
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'domo2').first_or_initialize
place.name = 'Domo'
place.area = sj
place.latitude = -33.499823
place.longitude = -70.612897
place.floor = '1'
place.information = 'Domo'
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'domo_ING').first_or_initialize
place.name = 'Domos de Ingeniería'
place.area = sj
place.latitude = -33.499823
place.longitude = -70.612897
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'E10').first_or_initialize
place.name = 'E10'
place.area = sj
place.latitude = -33.499134
place.longitude = -70.614200
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'E11').first_or_initialize
place.name = 'E11'
place.area = sj
place.latitude = -33.499022
place.longitude = -70.614178
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'E12').first_or_initialize
place.name = 'E12'
place.area = sj
place.latitude = -33.499022
place.longitude = -70.614076
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'E13').first_or_initialize
place.name = 'E13'
place.area = sj
place.latitude = -33.499111
place.longitude = -70.614081
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'E14').first_or_initialize
place.name = 'E14'
place.area = sj
place.latitude = -33.499089
place.longitude = -70.613797
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'E15').first_or_initialize
place.name = 'E15'
place.area = sj
place.latitude = -33.499013
place.longitude = -70.613797
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'E16').first_or_initialize
place.name = 'E16'
place.area = sj
place.latitude = -33.498981
place.longitude = -70.613706
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'E17').first_or_initialize
place.name = 'E17'
place.area = sj
place.latitude = -33.499075
place.longitude = -70.613673
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'ED109').first_or_initialize
place.name = 'ED109'
place.area = sj
place.latitude = -33.498179
place.longitude = -70.614941
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'ED110').first_or_initialize
place.name = 'ED110'
place.area = sj
place.latitude = -33.498235
place.longitude = -70.614842
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'ED111').first_or_initialize
place.name = 'ED111'
place.area = sj
place.latitude = -33.498119
place.longitude = -70.614193
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'ED112').first_or_initialize
place.name = 'ED112'
place.area = sj
place.latitude = -33.498099
place.longitude = -70.613990
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'ED113').first_or_initialize
place.name = 'ED113'
place.area = sj
place.latitude = -33.498108
place.longitude = -70.613993
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'ED214').first_or_initialize
place.name = 'ED214'
place.area = sj
place.latitude = -33.498117
place.longitude = -70.614207
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'ED215').first_or_initialize
place.name = 'ED215'
place.area = sj
place.latitude = -33.498144
place.longitude = -70.614223
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'ED216').first_or_initialize
place.name = 'ED216'
place.area = sj
place.latitude = -33.498055
place.longitude = -70.613960
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'ED217').first_or_initialize
place.name = 'ED217'
place.area = sj
place.latitude = -33.498120
place.longitude = -70.614035
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'ED218').first_or_initialize
place.name = 'ED218'
place.area = sj
place.latitude = -33.498098
place.longitude = -70.613986
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'ED219').first_or_initialize
place.name = 'ED219'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'ediciones_arq').first_or_initialize
place.name = 'Ediciones ARQ'
place.area = sj
place.latitude = -33.419849
place.longitude = -70.617716
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'RaulDeves').first_or_initialize
place.name = 'Edificio Raul Deves'
place.area = sj
place.latitude = -33.499616
place.longitude = -70.612735
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'EDU').first_or_initialize
place.name = 'Educación'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'eletro_qim').first_or_initialize
place.name = 'Eletroquímica'
place.area = sj
place.latitude = -33.498722
place.longitude = -70.610711
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'EEA').first_or_initialize
place.name = 'Escuela de Administración'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'escuela_arte').first_or_initialize
place.name = 'Escuela de Arte'
place.area = sj
place.latitude = -33.445349
place.longitude = -70.594181
place.floor = '1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'CCL').first_or_initialize
place.name = 'Escuela de Construcción Civil'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'ENF').first_or_initialize
place.name = 'Escuela de Enfermería'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'ING').first_or_initialize
place.name = 'Escuela de Ingeniería'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'MED').first_or_initialize
place.name = 'Escuela de Medicina'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'escuela_musica').first_or_initialize
place.name = 'Escuela de Música'
place.area = sj
place.latitude = -33.445832
place.longitude = -70.592896
place.floor = '1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'PSI').first_or_initialize
place.name = 'Escuela de Psicología'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'escuela_psico').first_or_initialize
place.name = 'Escuela de Psicología'
place.area = sj
place.latitude = -33.498403
place.longitude = -70.610134
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'escuela_teatro').first_or_initialize
place.name = 'Escuela de Teatro'
place.area = sj
place.latitude = -33.446006
place.longitude = -70.593148
place.floor = '1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'TSL').first_or_initialize
place.name = 'Escuela de Trabajo Social'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'escuela_trab_social').first_or_initialize
place.name = 'Escuela de Trabajo Social'
place.area = sj
place.latitude = -33.498501
place.longitude = -70.610128
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bici1').first_or_initialize
place.name = 'Estacionamiento de Bicicletas'
place.area = sj
place.latitude = -33.497740
place.longitude = -70.612941
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bici19').first_or_initialize
place.name = 'Estacionamiento de Bicicletas'
place.area = sj
place.latitude = -33.418895
place.longitude = -70.618351
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bici2').first_or_initialize
place.name = 'Estacionamiento de Bicicletas'
place.area = sj
place.latitude = -33.499361
place.longitude = -70.614255
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bici3').first_or_initialize
place.name = 'Estacionamiento de Bicicletas'
place.area = sj
place.latitude = -33.497237
place.longitude = -70.610355
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bici4').first_or_initialize
place.name = 'Estacionamiento de Bicicletas'
place.area = sj
place.latitude = -33.498375
place.longitude = -70.610533
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bici5').first_or_initialize
place.name = 'Estacionamiento de Bicicletas'
place.area = sj
place.latitude = -33.500282
place.longitude = -70.609832
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bici6').first_or_initialize
place.name = 'Estacionamiento de Bicicletas'
place.area = sj
place.latitude = -33.500706
place.longitude = -70.608004
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bici7').first_or_initialize
place.name = 'Estacionamiento de Bicicletas'
place.area = sj
place.latitude = -33.499442
place.longitude = -70.611902
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'bici8').first_or_initialize
place.name = 'Estacionamiento de Bicicletas'
place.area = sj
place.latitude = -33.441524
place.longitude = -70.639994
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'URB').first_or_initialize
place.name = 'Estudios Urbanos'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'extension_cc').first_or_initialize
place.name = 'Extensión'
place.area = sj
place.latitude = -33.440847
place.longitude = -70.641010
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'F1').first_or_initialize
place.name = 'F1'
place.area = sj
place.latitude = -33.499031
place.longitude = -70.613146
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'F2').first_or_initialize
place.name = 'F2'
place.area = sj
place.latitude = -33.498973
place.longitude = -70.613149
place.floor = '1'
place.information = 'Auditorio'
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'F3').first_or_initialize
place.name = 'F3'
place.area = sj
place.latitude = -33.498892
place.longitude = -70.613160
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'FADEU').first_or_initialize
place.name = 'FADEU'
place.area = lc
place.latitude = -33.419663
place.longitude = -70.618624
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'feuc_cc').first_or_initialize
place.name = 'FEUC'
place.area = sj
place.latitude = -33.440857
place.longitude = -70.640356
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'feuc_lc').first_or_initialize
place.name = 'FEUC'
place.area = sj
place.latitude = -33.419700
place.longitude = -70.618192
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'feuc_sociales').first_or_initialize
place.name = 'FEUC'
place.area = sj
place.latitude = -33.497766
place.longitude = -70.609919
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'FT-101').first_or_initialize
place.name = 'FT-101'
place.area = sj
place.latitude = -33.497971
place.longitude = -70.610615
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'FT-102').first_or_initialize
place.name = 'FT-102'
place.area = sj
place.latitude = -33.497703
place.longitude = -70.610647
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'FT-103').first_or_initialize
place.name = 'FT-103'
place.area = sj
place.latitude = -33.497656
place.longitude = -70.610762
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'FT-104').first_or_initialize
place.name = 'FT-104'
place.area = sj
place.latitude = -33.497985
place.longitude = -70.610700
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'FT-105').first_or_initialize
place.name = 'FT-105'
place.area = sj
place.latitude = -33.498020
place.longitude = -70.610714
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'facultad_bio_cel_mole').first_or_initialize
place.name = 'Facultad Biología Celular y Molecular'
place.area = sj
place.latitude = -33.441837
place.longitude = -70.639496
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'facultad_astro').first_or_initialize
place.name = 'Facultad de Astronomía'
place.area = sj
place.latitude = -33.499850
place.longitude = -70.611151
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'facultad_comunicaciones').first_or_initialize
place.name = 'Facultad de Comunicaciones'
place.area = sj
place.latitude = -33.441423
place.longitude = -70.640802
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'facultad_filosofia').first_or_initialize
place.name = 'Facultad de Filosofía'
place.area = sj
place.latitude = -33.496753
place.longitude = -70.614067
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'facultad_fisiologia').first_or_initialize
place.name = 'Facultad de Fisiología'
place.area = sj
place.latitude = -33.441403
place.longitude = -70.639573
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'facultad_geografia').first_or_initialize
place.name = 'Facultad de Geografía'
place.area = sj
place.latitude = -33.497309
place.longitude = -70.613166
place.floor = '2?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'facultad_letras').first_or_initialize
place.name = 'Facultad de Letras'
place.area = sj
place.latitude = -33.496719
place.longitude = -70.613595
place.floor = '2?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'facultad_mate').first_or_initialize
place.name = 'Facultad de Matemática'
place.area = sj
place.latitude = -33.499762
place.longitude = -70.610652
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'facultad_quimica').first_or_initialize
place.name = 'Facultad de Química'
place.area = sj
place.latitude = -33.498832
place.longitude = -70.611327
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'TTF').first_or_initialize
place.name = 'Facultad de Teología'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'fotocopia18').first_or_initialize
place.name = 'Fotocopia iPlot'
place.area = sj
place.latitude = -33.419393
place.longitude = -70.618427
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'fotocopia17').first_or_initialize
place.name = 'Fotocopiadora BIOUC'
place.area = sj
place.latitude = -33.441965
place.longitude = -70.639700
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'fotocopia15').first_or_initialize
place.name = 'Fotocopiadora de Derecho'
place.area = sj
place.latitude = -33.441015
place.longitude = -70.640385
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'fotocopia16').first_or_initialize
place.name = 'Fotocopiadora de Medicina'
place.area = sj
place.latitude = -33.441542
place.longitude = -70.640571
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'fotocopia1').first_or_initialize
place.name = 'Fotocopias'
place.area = sj
place.latitude = -33.497615
place.longitude = -70.610703
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'fotocopia10').first_or_initialize
place.name = 'Fotocopias'
place.area = sj
place.latitude = -33.498135
place.longitude = -70.613398
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'fotocopia11').first_or_initialize
place.name = 'Fotocopias'
place.area = sj
place.latitude = -33.500118
place.longitude = -70.613304
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'fotocopia12').first_or_initialize
place.name = 'Fotocopias'
place.area = sj
place.latitude = -33.501360
place.longitude = -70.611823
place.floor = '1'
place.information = 'Afuera de la universidad.'
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'fotocopia13').first_or_initialize
place.name = 'Fotocopias'
place.area = sj
place.latitude = -33.501639
place.longitude = -70.611671
place.floor = '1'
place.information = 'Afuera de la universidad.'
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'fotocopia14').first_or_initialize
place.name = 'Fotocopias'
place.area = sj
place.latitude = -33.498139
place.longitude = -70.616333
place.floor = '1'
place.information = 'Afuera de la universidad.'
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'fotocopia2').first_or_initialize
place.name = 'Fotocopias'
place.area = sj
place.latitude = -33.500526
place.longitude = -70.611040
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'fotocopia3').first_or_initialize
place.name = 'Fotocopias'
place.area = sj
place.latitude = -33.496932
place.longitude = -70.611425
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'fotocopia4').first_or_initialize
place.name = 'Fotocopias'
place.area = sj
place.latitude = -33.498150
place.longitude = -70.614246
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'fotocopia5').first_or_initialize
place.name = 'Fotocopias'
place.area = sj
place.latitude = -33.497499
place.longitude = -70.613976
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'fotocopia6').first_or_initialize
place.name = 'Fotocopias'
place.area = sj
place.latitude = -33.498856
place.longitude = -70.613184
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'fotocopia7').first_or_initialize
place.name = 'Fotocopias'
place.area = sj
place.latitude = -33.498980
place.longitude = -70.613669
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'fotocopia8').first_or_initialize
place.name = 'Fotocopias'
place.area = sj
place.latitude = -33.498911
place.longitude = -70.610767
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'fotocopia9').first_or_initialize
place.name = 'Fotocopias'
place.area = sj
place.latitude = -33.497815
place.longitude = -70.609874
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'galeria_macchina').first_or_initialize
place.name = 'Galería Macchina'
place.area = sj
place.latitude = -33.446751
place.longitude = -70.593597
place.floor = '1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'H1').first_or_initialize
place.name = 'H1'
place.area = sj
place.latitude = -33.499037
place.longitude = -70.615147
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'H2').first_or_initialize
place.name = 'H2'
place.area = sj
place.latitude = -33.499107
place.longitude = -70.615134
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'H3').first_or_initialize
place.name = 'H3'
place.area = sj
place.latitude = -33.499193
place.longitude = -70.615112
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'H4').first_or_initialize
place.name = 'H4'
place.area = sj
place.latitude = -33.499258
place.longitude = -70.615088
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'hall_cc').first_or_initialize
place.name = 'Hall Universitario'
place.area = sj
place.latitude = -33.441148
place.longitude = -70.640744
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'hall_sj').first_or_initialize
place.name = 'Hall Universitario'
place.area = sj
place.latitude = -33.498034
place.longitude = -70.613136
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'iplotuc').first_or_initialize
place.name = 'IPlotUC'
place.area = sj
place.latitude = -33.419393
place.longitude = -70.618427
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'Imprimircl').first_or_initialize
place.name = 'Imprimir.cl'
place.area = sj
place.latitude = -33.498135
place.longitude = -70.613398
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'informaciones_cc').first_or_initialize
place.name = 'Informaciones'
place.area = sj
place.latitude = -33.440872
place.longitude = -70.6409771
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'inst_confucio').first_or_initialize
place.name = 'Instituto Confucio'
place.area = sj
place.latitude = -33.446264
place.longitude = -70.594105
place.floor = '1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'AST').first_or_initialize
place.name = 'Instituto de Astrofísica'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'ICP').first_or_initialize
place.name = 'Instituto de Ciencia Política'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'EAE').first_or_initialize
place.name = 'Instituto de Economía'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'EST').first_or_initialize
place.name = 'Instituto de Estética'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'inst_estetica').first_or_initialize
place.name = 'Instituto de Estética'
place.area = sj
place.latitude = -33.446473
place.longitude = -70.593993
place.floor = '1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'FIL').first_or_initialize
place.name = 'Instituto de Filosofía'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'FIS').first_or_initialize
place.name = 'Instituto de Física'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'GEO').first_or_initialize
place.name = 'Instituto de Geografía'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'HIS').first_or_initialize
place.name = 'Instituto de Historia'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'SOL').first_or_initialize
place.name = 'Instituto de Sociología'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'ins_sociologia').first_or_initialize
place.name = 'Instituto de Sociología'
place.area = sj
place.latitude = -33.498501
place.longitude = -70.610128
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'J1').first_or_initialize
place.name = 'J1'
place.area = sj
place.latitude = -33.499116
place.longitude = -70.612157
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'J2').first_or_initialize
place.name = 'J2'
place.area = sj
place.latitude = -33.499094
place.longitude = -70.612106
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'J3').first_or_initialize
place.name = 'J3'
place.area = sj
place.latitude = -33.499107
place.longitude = -70.612041
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'J4').first_or_initialize
place.name = 'J4'
place.area = sj
place.latitude = -33.499089
place.longitude = -70.611987
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'L MORENO').first_or_initialize
place.name = 'L. Moreno'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'LAB1').first_or_initialize
place.name = 'LAB1'
place.area = sj
place.latitude = -33.496783
place.longitude = -70.609766
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'LAB101').first_or_initialize
place.name = 'LAB101'
place.area = sj
place.latitude = -33.500629
place.longitude = -70.610410
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'LAB102').first_or_initialize
place.name = 'LAB102'
place.area = sj
place.latitude = -33.500616
place.longitude = -70.610344
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'LAB103').first_or_initialize
place.name = 'LAB103'
place.area = sj
place.latitude = -33.500640
place.longitude = -70.610269
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'LAB104').first_or_initialize
place.name = 'LAB104'
place.area = sj
place.latitude = -33.500640
place.longitude = -70.610192
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'LAB11').first_or_initialize
place.name = 'LAB11'
place.area = sj
place.latitude = -33.499488
place.longitude = -70.610692
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'LAB12').first_or_initialize
place.name = 'LAB12'
place.area = sj
place.latitude = -33.499481
place.longitude = -70.610789
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'LAB13').first_or_initialize
place.name = 'LAB13'
place.area = sj
place.latitude = -33.499277
place.longitude = -70.610837
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'LAB14').first_or_initialize
place.name = 'LAB14'
place.area = sj
place.latitude = -33.499351
place.longitude = -70.610681
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'LAB2').first_or_initialize
place.name = 'LAB2'
place.area = sj
place.latitude = -33.496797
place.longitude = -70.609765
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'LAB3').first_or_initialize
place.name = 'LAB3'
place.area = sj
place.latitude = -33.496695
place.longitude = -70.609780
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'LAB4A').first_or_initialize
place.name = 'LAB4A'
place.area = sj
place.latitude = -33.496629
place.longitude = -70.609795
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'LAB4B').first_or_initialize
place.name = 'LAB4B'
place.area = sj
place.latitude = -33.496546
place.longitude = -70.609793
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'LF10').first_or_initialize
place.name = 'LF10'
place.area = sj
place.latitude = -33.499645
place.longitude = -70.610940
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'la_tala').first_or_initialize
place.name = 'La Tala'
place.area = sj
place.latitude = -33.419331
place.longitude = -70.617971
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'Y').first_or_initialize
place.name = 'La Y'
place.area = sj
place.latitude = -33.499176
place.longitude = -70.612194
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'lab_analisis_mov').first_or_initialize
place.name = 'Laboratorio Análisis del Movimiento'
place.area = sj
place.latitude = -33.500442
place.longitude = -70.609986
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'lab_ciclo_basico').first_or_initialize
place.name = 'Laboratorio Ciclo Básico'
place.area = sj
place.latitude = -33.498768
place.longitude = -70.611349
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'lab_fis_ejercicio').first_or_initialize
place.name = 'Laboratorio Fisiología del Ejercicio'
place.area = sj
place.latitude = -33.500344
place.longitude = -70.609962
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'lab_fisico_qim').first_or_initialize
place.name = 'Laboratorio Físico-Químico'
place.area = sj
place.latitude = -33.499187
place.longitude = -70.611589
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'lab_maxwell').first_or_initialize
place.name = 'Laboratorio James C. Maxwell'
place.area = sj
place.latitude = -33.499297
place.longitude = -70.610695
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'Quim Alime').first_or_initialize
place.name = 'Laboratorio Química de Alimentos'
place.area = sj
place.latitude = -33.500317
place.longitude = -70.610345
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'lab_tec_alimen').first_or_initialize
place.name = 'Laboratorio Técnicas Alimenticias'
place.area = sj
place.latitude = -33.500257
place.longitude = -70.610120
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'lab_fonetica_h').first_or_initialize
place.name = 'Laboratorio de Fonética'
place.area = sj
place.latitude = -33.496747
place.longitude = -70.613854
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'lab_geomatica').first_or_initialize
place.name = 'Laboratorio de Geomática'
place.area = sj
place.latitude = -33.497362
place.longitude = -70.613113
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'LAB. M y P').first_or_initialize
place.name = 'Laboratorio de Modelos y Prototipos '
place.area = sj
place.latitude = -33.419167
place.longitude = -70.617730
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'lab_qim').first_or_initialize
place.name = 'Laboratorio de Química'
place.area = sj
place.latitude = -33.498781
place.longitude = -70.611333
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'lab_qim_organica').first_or_initialize
place.name = 'Laboratorio de Química Orgánica'
place.area = sj
place.latitude = -33.499022
place.longitude = -70.611056
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'lab_nutri').first_or_initialize
place.name = 'Laboratorio de evaluación nutricional'
place.area = sj
place.latitude = -33.500359
place.longitude = -70.610352
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'lab_blanconegro').first_or_initialize
place.name = 'Laboratorios Blanco y Negro'
place.area = sj
place.latitude = -33.497409
place.longitude = -70.609826
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'Lab.Docenc').first_or_initialize
place.name = 'Laboratorios Docentes'
place.area = sj
place.latitude = -33.499513
place.longitude = -70.610969
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'lab_docentes_cc_bio').first_or_initialize
place.name = 'Laboratorios Docentes'
place.area = sj
place.latitude = -33.441918
place.longitude = -70.639567
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'LET').first_or_initialize
place.name = 'Letras'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'libreriauc_sociales').first_or_initialize
place.name = 'Librería UC'
place.area = sj
place.latitude = -33.498336
place.longitude = -70.610208
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'lib_tala_or').first_or_initialize
place.name = 'Librería la Tala'
place.area = sj
place.latitude = -33.445503
place.longitude = -70.593665
place.floor = '1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'LAMPARA').first_or_initialize
place.name = 'LÁMPARA'
place.area = sj
place.latitude = -33.418941
place.longitude = -70.618043
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'm').first_or_initialize
place.name = 'M'
place.area = sj
place.latitude = -33.441493
place.longitude = -70.640542
place.floor = '1-?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'M1').first_or_initialize
place.name = 'M1'
place.area = sj
place.latitude = -33.497693
place.longitude = -70.609919
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'M2').first_or_initialize
place.name = 'M2'
place.area = sj
place.latitude = -33.497421
place.longitude = -70.609914
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'MAGISTER').first_or_initialize
place.name = 'Magister'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'magister_or').first_or_initialize
place.name = 'Masgister'
place.area = sj
place.latitude = -33.446333
place.longitude = -70.594229
place.floor = '1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'MAT').first_or_initialize
place.name = 'Matemáticas'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'micro_electro_cc').first_or_initialize
place.name = 'Microscopía Electrónica'
place.area = sj
place.latitude = -33.441992
place.longitude = -70.639585
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'MOSCATTI').first_or_initialize
place.name = 'Moscatti'
place.area = sj
place.latitude = -33.441369
place.longitude = -70.640321
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'MILTICANCH').first_or_initialize
place.name = 'Multicancha'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'maquina1').first_or_initialize
place.name = 'Máquina'
place.area = sj
place.latitude = -33.496875
place.longitude = -70.611566
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'maquina10').first_or_initialize
place.name = 'Máquina'
place.area = sj
place.latitude = -33.499384
place.longitude = -70.610088
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'maquina11').first_or_initialize
place.name = 'Máquina'
place.area = sj
place.latitude = -33.499349
place.longitude = -70.609885
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'maquina12').first_or_initialize
place.name = 'Máquina'
place.area = sj
place.latitude = -33.497071
place.longitude = -70.609311
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'maquina13').first_or_initialize
place.name = 'Máquina'
place.area = sj
place.latitude = -33.500565
place.longitude = -70.611192
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'maquina14').first_or_initialize
place.name = 'Máquina'
place.area = sj
place.latitude = -33.499188
place.longitude = -70.612019
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'maquina15').first_or_initialize
place.name = 'Máquina'
place.area = sj
place.latitude = -33.441304
place.longitude = -70.640858
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'maquina16').first_or_initialize
place.name = 'Máquina'
place.area = sj
place.latitude = -33.441260
place.longitude = -70.640967
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'maquina17').first_or_initialize
place.name = 'Máquina'
place.area = sj
place.latitude = -33.441529
place.longitude = -70.640659
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'maquina18').first_or_initialize
place.name = 'Máquina'
place.area = sj
place.latitude = -33.419398
place.longitude = -70.618452
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'maquina2').first_or_initialize
place.name = 'Máquina'
place.area = sj
place.latitude = -33.497118
place.longitude = -70.611854
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'maquina3').first_or_initialize
place.name = 'Máquina'
place.area = sj
place.latitude = -33.497157
place.longitude = -70.611181
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'maquina4').first_or_initialize
place.name = 'Máquina'
place.area = sj
place.latitude = -33.496777
place.longitude = -70.613876
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'maquina5').first_or_initialize
place.name = 'Máquina'
place.area = sj
place.latitude = -33.499990
place.longitude = -70.613255
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'maquina6').first_or_initialize
place.name = 'Máquina'
place.area = sj
place.latitude = -33.500318
place.longitude = -70.612582
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'maquina7').first_or_initialize
place.name = 'Máquina'
place.area = sj
place.latitude = -33.497452
place.longitude = -70.610290
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'maquina8').first_or_initialize
place.name = 'Máquina'
place.area = sj
place.latitude = -33.498476
place.longitude = -70.610066
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'maquina9').first_or_initialize
place.name = 'Máquina'
place.area = sj
place.latitude = -33.498265
place.longitude = -70.610226
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'MUS').first_or_initialize
place.name = 'Música'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'N10').first_or_initialize
place.name = 'N10'
place.area = sj
place.latitude = -33.497883
place.longitude = -70.610197
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'N11').first_or_initialize
place.name = 'N11'
place.area = sj
place.latitude = -33.497705
place.longitude = -70.610213
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'N12').first_or_initialize
place.name = 'N12'
place.area = sj
place.latitude = -33.497607
place.longitude = -70.610231
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'N13-A').first_or_initialize
place.name = 'N13-A'
place.area = sj
place.latitude = -33.497590
place.longitude = -70.610101
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'N13-B').first_or_initialize
place.name = 'N13-B'
place.area = sj
place.latitude = -33.497591
place.longitude = -70.610100
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'N14').first_or_initialize
place.name = 'N14'
place.area = sj
place.latitude = -33.497561
place.longitude = -70.610157
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'N15').first_or_initialize
place.name = 'N15'
place.area = sj
place.latitude = -33.497634
place.longitude = -70.610160
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'N16-A').first_or_initialize
place.name = 'N16-A'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'N16-B').first_or_initialize
place.name = 'N16-B'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'N17').first_or_initialize
place.name = 'N17'
place.area = sj
place.latitude = -33.499205
place.longitude = -70.609959
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'N18').first_or_initialize
place.name = 'N18'
place.area = sj
place.latitude = -33.499288
place.longitude = -70.609944
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'N1A').first_or_initialize
place.name = 'N1A'
place.area = sj
place.latitude = -33.499199
place.longitude = -70.610045
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'N1B').first_or_initialize
place.name = 'N1B'
place.area = sj
place.latitude = -33.499259
place.longitude = -70.610035
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'N2').first_or_initialize
place.name = 'N2'
place.area = sj
place.latitude = -33.498573
place.longitude = -70.610247
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'N25').first_or_initialize
place.name = 'N25'
place.area = sj
place.latitude = -33.498546
place.longitude = -70.610128
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'N26').first_or_initialize
place.name = 'N26'
place.area = sj
place.latitude = -33.498644
place.longitude = -70.610114
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'N27').first_or_initialize
place.name = 'N27'
place.area = sj
place.latitude = -33.498708
place.longitude = -70.610111
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'N28').first_or_initialize
place.name = 'N28'
place.area = sj
place.latitude = -33.498850
place.longitude = -70.610091
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'N29').first_or_initialize
place.name = 'N29'
place.area = sj
place.latitude = -33.498897
place.longitude = -70.610077
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'N3').first_or_initialize
place.name = 'N3'
place.area = sj
place.latitude = -33.498623
place.longitude = -70.610247
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'N30').first_or_initialize
place.name = 'N30'
place.area = sj
place.latitude = -33.498986
place.longitude = -70.610068
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'N31').first_or_initialize
place.name = 'N31'
place.area = sj
place.latitude = -33.499041
place.longitude = -70.610057
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'N32').first_or_initialize
place.name = 'N32'
place.area = sj
place.latitude = -33.499084
place.longitude = -70.610048
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'N33').first_or_initialize
place.name = 'N33'
place.area = sj
place.latitude = -33.499108
place.longitude = -70.610045
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'N34').first_or_initialize
place.name = 'N34'
place.area = sj
place.latitude = -33.499149
place.longitude = -70.610046
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'N35').first_or_initialize
place.name = 'N35'
place.area = sj
place.latitude = -33.499149
place.longitude = -70.610046
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'N36').first_or_initialize
place.name = 'N36'
place.area = sj
place.latitude = -33.499149
place.longitude = -70.610046
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'N37').first_or_initialize
place.name = 'N37'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'N4').first_or_initialize
place.name = 'N4'
place.area = sj
place.latitude = -33.498723
place.longitude = -70.610235
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'N5').first_or_initialize
place.name = 'N5'
place.area = sj
place.latitude = -33.498854
place.longitude = -70.610223
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'N6').first_or_initialize
place.name = 'N6'
place.area = sj
place.latitude = -33.498954
place.longitude = -70.610211
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'N7').first_or_initialize
place.name = 'N7'
place.area = sj
place.latitude = -33.499037
place.longitude = -70.610217
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'N8').first_or_initialize
place.name = 'N8'
place.area = sj
place.latitude = -33.499105
place.longitude = -70.610199
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'nutri_human').first_or_initialize
place.name = 'Nutrición Humana'
place.area = sj
place.latitude = -33.500502
place.longitude = -70.610026
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'oficina_uda').first_or_initialize
place.name = 'Oficina UDA'
place.area = sj
place.latitude = -33.500310
place.longitude = -70.610241
place.floor = '3?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'preuc_cc').first_or_initialize
place.name = 'PREU UC'
place.area = sj
place.latitude = -33.440524
place.longitude = -70.640507
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'preuuc_sociales').first_or_initialize
place.name = 'PREU UC'
place.area = sj
place.latitude = -33.497403
place.longitude = -70.609997
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'pastoral_cc').first_or_initialize
place.name = 'Pastoral UC'
place.area = sj
place.latitude = -33.440874
place.longitude = -70.640760
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'PatioSub_SA').first_or_initialize
place.name = 'Patio Subterraneo'
place.area = sj
place.latitude = -33.499330
place.longitude = -70.614910
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'politiic_pub_lc').first_or_initialize
place.name = 'Políticas Públicas UC'
place.area = sj
place.latitude = -33.419602
place.longitude = -70.618646
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'postgrado_lc').first_or_initialize
place.name = 'Postgrados'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'Preu_social_ING').first_or_initialize
place.name = 'Preuniversitario Social'
place.area = sj
place.latitude = -33.500199
place.longitude = -70.613298
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'prac_cs_1').first_or_initialize
place.name = 'Prácticos 1'
place.area = sj
place.latitude = -33.500440
place.longitude = -70.610050
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'prac_cs_2').first_or_initialize
place.name = 'Prácticos 2'
place.area = sj
place.latitude = -33.500342
place.longitude = -70.610029
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'puesto1').first_or_initialize
place.name = 'Puesto de comida'
place.area = sj
place.latitude = -33.497513
place.longitude = -70.614442
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'puesto10').first_or_initialize
place.name = 'Puesto de comida'
place.area = sj
place.latitude = -33.500714
place.longitude = -70.609947
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'puesto11').first_or_initialize
place.name = 'Puesto de comida'
place.area = sj
place.latitude = -33.498485
place.longitude = -70.611747
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'puesto12').first_or_initialize
place.name = 'Puesto de comida'
place.area = sj
place.latitude = -33.498024
place.longitude = -70.613468
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'puesto13').first_or_initialize
place.name = 'Puesto de comida'
place.area = sj
place.latitude = -33.498133
place.longitude = -70.613326
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'puesto14').first_or_initialize
place.name = 'Puesto de comida'
place.area = sj
place.latitude = -33.498422
place.longitude = -70.616321
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'puesto15').first_or_initialize
place.name = 'Puesto de comida'
place.area = sj
place.latitude = -33.498673
place.longitude = -70.615933
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'puesto16').first_or_initialize
place.name = 'Puesto de comida'
place.area = sj
place.latitude = -33.441339
place.longitude = -70.640445
place.floor = '1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'puesto17').first_or_initialize
place.name = 'Puesto de comida'
place.area = sj
place.latitude = -33.445916
place.longitude = -70.594023
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'puesto18').first_or_initialize
place.name = 'Puesto de comida'
place.area = sj
place.latitude = -33.419313
place.longitude = -70.617777
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'puesto2').first_or_initialize
place.name = 'Puesto de comida'
place.area = sj
place.latitude = -33.498133
place.longitude = -70.613326
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'puesto3').first_or_initialize
place.name = 'Puesto de comida'
place.area = sj
place.latitude = -33.498131
place.longitude = -70.610109
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'puesto4').first_or_initialize
place.name = 'Puesto de comida'
place.area = sj
place.latitude = -33.500001
place.longitude = -70.612645
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'puesto5').first_or_initialize
place.name = 'Puesto de comida'
place.area = sj
place.latitude = -33.497675
place.longitude = -70.609681
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'puesto6').first_or_initialize
place.name = 'Puesto de comida'
place.area = sj
place.latitude = -33.500081
place.longitude = -70.613177
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'puesto7').first_or_initialize
place.name = 'Puesto de comida'
place.area = sj
place.latitude = -33.498104
place.longitude = -70.610312
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'puesto8').first_or_initialize
place.name = 'Puesto de comida'
place.area = sj
place.latitude = -33.498191
place.longitude = -70.610032
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'puesto9').first_or_initialize
place.name = 'Puesto de comida'
place.area = sj
place.latitude = -33.500629
place.longitude = -70.610926
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'Break_hall').first_or_initialize
place.name = 'Punto Break'
place.area = sj
place.latitude = -33.498024
place.longitude = -70.613468
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'quick_deli_cc').first_or_initialize
place.name = 'QuickDeli'
place.area = sj
place.latitude = -33.441339
place.longitude = -70.640445
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'QIM').first_or_initialize
place.name = 'Química'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'qim_biologica').first_or_initialize
place.name = 'Química Biológica'
place.area = sj
place.latitude = -33.498727
place.longitude = -70.610705
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'qim_computacional').first_or_initialize
place.name = 'Química Teórica Computacional'
place.area = sj
place.latitude = -33.498747
place.longitude = -70.610851
place.floor = '2?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'R1').first_or_initialize
place.name = 'R1'
place.area = sj
place.latitude = -33.497225
place.longitude = -70.613910
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'R2').first_or_initialize
place.name = 'R2'
place.area = sj
place.latitude = -33.497260
place.longitude = -70.613914
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'R3').first_or_initialize
place.name = 'R3'
place.area = sj
place.latitude = -33.497310
place.longitude = -70.613903
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'R4').first_or_initialize
place.name = 'R4'
place.area = sj
place.latitude = -33.497315
place.longitude = -70.613897
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'R5').first_or_initialize
place.name = 'R5'
place.area = sj
place.latitude = -33.497386
place.longitude = -70.613892
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'R6').first_or_initialize
place.name = 'R6'
place.area = sj
place.latitude = -33.497443
place.longitude = -70.613891
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'rayos_X').first_or_initialize
place.name = 'Rayos X'
place.area = sj
place.latitude = -33.499558
place.longitude = -70.611290
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'recepcion_cc').first_or_initialize
place.name = 'Recepción'
place.area = sj
place.latitude = -33.498803
place.longitude = -70.613518
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'recepcion_ed').first_or_initialize
place.name = 'Recepción'
place.area = sj
place.latitude = -33.498160
place.longitude = -70.614603
place.floor = '1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'rectoria_cc').first_or_initialize
place.name = 'Rectoría'
place.area = sj
place.latitude = -33.440567
place.longitude = -70.640589
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'recursos_aprendiz_ed').first_or_initialize
place.name = 'Recursos Aprendizaje'
place.area = sj
place.latitude = -33.498163
place.longitude = -70.613738
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'REFECTORIO').first_or_initialize
place.name = 'Refectorio'
place.area = lc
place.latitude = -33.419566
place.longitude = -70.617850
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'S11').first_or_initialize
place.name = 'S11'
place.area = sj
place.latitude = -33.496864
place.longitude = -70.613156
place.floor = '-1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'S12').first_or_initialize
place.name = 'S12'
place.area = sj
place.latitude = -33.496887
place.longitude = -70.613170
place.floor = '-1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'S13').first_or_initialize
place.name = 'S13'
place.area = sj
place.latitude = -33.497132
place.longitude = -70.613161
place.floor = '-1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'S14').first_or_initialize
place.name = 'S14'
place.area = sj
place.latitude = -33.497141
place.longitude = -70.613143
place.floor = '-1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'S15').first_or_initialize
place.name = 'S15'
place.area = sj
place.latitude = -33.497182
place.longitude = -70.613124
place.floor = '-1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'S16').first_or_initialize
place.name = 'S16'
place.area = sj
place.latitude = -33.497383
place.longitude = -70.613498
place.floor = '-1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'S18').first_or_initialize
place.name = 'S18'
place.area = sj
place.latitude = -33.496817
place.longitude = -70.613182
place.floor = '-1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'S19').first_or_initialize
place.name = 'S19'
place.area = sj
place.latitude = -33.497421
place.longitude = -70.613549
place.floor = '-1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'S2').first_or_initialize
place.name = 'S2'
place.area = sj
place.latitude = -33.496698
place.longitude = -70.614087
place.floor = '-1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'S20').first_or_initialize
place.name = 'S20'
place.area = sj
place.latitude = -33.497435
place.longitude = -70.613608
place.floor = '-1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'S3').first_or_initialize
place.name = 'S3'
place.area = sj
place.latitude = -33.496692
place.longitude = -70.613535
place.floor = '-1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'S4').first_or_initialize
place.name = 'S4'
place.area = sj
place.latitude = -33.496694
place.longitude = -70.613511
place.floor = '-1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'S5').first_or_initialize
place.name = 'S5'
place.area = sj
place.latitude = -33.496722
place.longitude = -70.613891
place.floor = '-1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'S6').first_or_initialize
place.name = 'S6'
place.area = sj
place.latitude = -33.496708
place.longitude = -70.613865
place.floor = '-1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'S7').first_or_initialize
place.name = 'S7'
place.area = sj
place.latitude = -33.496697
place.longitude = -70.613638
place.floor = '-1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'S8').first_or_initialize
place.name = 'S8'
place.area = sj
place.latitude = -33.496716
place.longitude = -70.613611
place.floor = '-1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'S9').first_or_initialize
place.name = 'S9'
place.area = sj
place.latitude = -33.496824
place.longitude = -70.613170
place.floor = '-1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'SALA PC').first_or_initialize
place.name = 'SALA PC'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'SALA101').first_or_initialize
place.name = 'SALA101'
place.area = sj
place.latitude = -33.419039
place.longitude = -70.618115
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'SALA102').first_or_initialize
place.name = 'SALA102'
place.area = sj
place.latitude = -33.418951
place.longitude = -70.618211
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'SALA103').first_or_initialize
place.name = 'SALA103'
place.area = sj
place.latitude = -33.418788
place.longitude = -70.618074
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'SALA104').first_or_initialize
place.name = 'SALA104'
place.area = sj
place.latitude = -33.418875
place.longitude = -70.617942
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'SALA11').first_or_initialize
place.name = 'SALA11'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'SALON SLGM').first_or_initialize
place.name = 'SALON SLGM'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'SALA 10').first_or_initialize
place.name = 'SALA 10'
place.area = lc
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'SALA 12').first_or_initialize
place.name = 'SALA 12'
place.area = lc
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'SALA 12').first_or_initialize
place.name = 'SALA 12'
place.area = cc
place.latitude = -33.440914
place.longitude = -70.640452
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'SALA 13').first_or_initialize
place.name = 'SALA 13'
place.area = cc
place.latitude = -33.440893
place.longitude = -70.640419
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'SALA 16').first_or_initialize
place.name = 'SALA 16'
place.area = cc
place.latitude = -33.440707
place.longitude = -70.640220
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'SALA 17').first_or_initialize
place.name = 'SALA 17'
place.area = cc
place.latitude = -33.440563
place.longitude = -70.640322
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'SALA2_3').first_or_initialize
place.name = 'Sala 2+3'
place.area = sj
place.latitude = -33.419265
place.longitude = -70.618428
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'SALA 20').first_or_initialize
place.name = 'SALA 20'
place.area = lc
place.latitude = -33.419571
place.longitude = -70.618607
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'SALA 21').first_or_initialize
place.name = 'SALA 21'
place.area = lc
place.latitude = -33.419548
place.longitude = -70.618573
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'SALA 22').first_or_initialize
place.name = 'SALA 22'
place.area = lc
place.latitude = -33.419525
place.longitude = -70.618548
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'SALA 23').first_or_initialize
place.name = 'SALA 23'
place.area = lc
place.latitude = -33.419499
place.longitude = -70.618520
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'SALA 24').first_or_initialize
place.name = 'SALA 24'
place.area = lc
place.latitude = -33.419473
place.longitude = -70.618496
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'SALA 25').first_or_initialize
place.name = 'SALA 25'
place.area = lc
place.latitude = -33.419452
place.longitude = -70.618480
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'SALA 26').first_or_initialize
place.name = 'SALA 26'
place.area = lc
place.latitude = -33.419424
place.longitude = -70.618443
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'SALA 30').first_or_initialize
place.name = 'SALA 30'
place.area = lc
place.latitude = -33.419602
place.longitude = -70.618646
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'SALA 31').first_or_initialize
place.name = 'SALA 31'
place.area = lc
place.latitude = -33.419571
place.longitude = -70.618607
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'SALA 32').first_or_initialize
place.name = 'SALA 32'
place.area = lc
place.latitude = -33.419548
place.longitude = -70.618573
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'SALA 33').first_or_initialize
place.name = 'SALA 33'
place.area = lc
place.latitude = -33.419525
place.longitude = -70.618548
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'SALA 34').first_or_initialize
place.name = 'SALA 34'
place.area = lc
place.latitude = -33.419499
place.longitude = -70.618520
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'SALA 35').first_or_initialize
place.name = 'SALA 35'
place.area = lc
place.latitude = -33.419473
place.longitude = -70.618496
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'SALA 36').first_or_initialize
place.name = 'SALA 36'
place.area = lc
place.latitude = -33.419452
place.longitude = -70.618480
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'SALA 37').first_or_initialize
place.name = 'SALA 37'
place.area = lc
place.latitude = -33.419424
place.longitude = -70.618443
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'SALA 38').first_or_initialize
place.name = 'SALA 38'
place.area = lc
place.latitude = -33.419393
place.longitude = -70.618427
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'SALA 39').first_or_initialize
place.name = 'SALA 39'
place.area = lc
place.latitude = -33.419398
place.longitude = -70.618452
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'SALA 7').first_or_initialize
place.name = 'SALA 7'
place.area = lc
place.latitude = -33.419801
place.longitude = -70.617692
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'SALA 8+9').first_or_initialize
place.name = 'SALA 8+9'
place.area = lc
place.latitude = -33.419745
place.longitude = -70.617717
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'sala_a_neco').first_or_initialize
place.name = 'Sala Andrés Necochea'
place.area = sj
place.latitude = -33.419192
place.longitude = -70.618529
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'SalaAyudantes_SA').first_or_initialize
place.name = 'Sala Ayudantes'
place.area = sj
place.latitude = -33.499006
place.longitude = -70.615169
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'sala_crivera').first_or_initialize
place.name = 'Sala Carlos Rivera'
place.area = sj
place.latitude = -33.499385
place.longitude = -70.610568
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'JGUZMAN1').first_or_initialize
place.name = 'Sala Jaime Guzmán 1'
place.area = cc
place.latitude = -33.440486
place.longitude = -70.640420
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'JGUZMAN2').first_or_initialize
place.name = 'Sala Jaime Guzmán 2'
place.area = cc
place.latitude = -33.440633
place.longitude = -70.640274
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'sala_luco').first_or_initialize
place.name = 'Sala Luco'
place.area = sj
place.latitude = -33.441678
place.longitude = -70.639273
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'PLIRA').first_or_initialize
place.name = 'Sala Pedro Lira Urquieta'
place.area = sj
place.latitude = -33.440707
place.longitude = -70.640166
place.floor = '1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'salaestudio1').first_or_initialize
place.name = 'Sala de Estudio'
place.area = sj
place.latitude = -33.497092
place.longitude = -70.611379
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'salaestudio10').first_or_initialize
place.name = 'Sala de Estudio'
place.area = sj
place.latitude = -33.498282
place.longitude = -70.610148
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'salaestudio11').first_or_initialize
place.name = 'Sala de Estudio'
place.area = sj
place.latitude = -33.498067
place.longitude = -70.609861
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'salaestudio12').first_or_initialize
place.name = 'Sala de Estudio'
place.area = sj
place.latitude = -33.497049
place.longitude = -70.609266
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'salaestudio13').first_or_initialize
place.name = 'Sala de Estudio'
place.area = sj
place.latitude = -33.500431
place.longitude = -70.610636
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'salaestudio14').first_or_initialize
place.name = 'Sala de Estudio'
place.area = sj
place.latitude = -33.500314
place.longitude = -70.610349
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'salaestudio15').first_or_initialize
place.name = 'Sala de Estudio'
place.area = sj
place.latitude = -33.498915
place.longitude = -70.610654
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'salaestudio16').first_or_initialize
place.name = 'Sala de Estudio'
place.area = sj
place.latitude = -33.498906
place.longitude = -70.613458
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'salaestudio2').first_or_initialize
place.name = 'Sala de Estudio'
place.area = sj
place.latitude = -33.496956
place.longitude = -70.611759
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'salaestudio3').first_or_initialize
place.name = 'Sala de Estudio'
place.area = sj
place.latitude = -33.498037
place.longitude = -70.614733
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'salaestudio4').first_or_initialize
place.name = 'Sala de Estudio'
place.area = sj
place.latitude = -33.497282
place.longitude = -70.613603
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'salaestudio5').first_or_initialize
place.name = 'Sala de Estudio'
place.area = sj
place.latitude = -33.499069
place.longitude = -70.613138
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'salaestudio6').first_or_initialize
place.name = 'Sala de Estudio'
place.area = sj
place.latitude = -33.498861
place.longitude = -70.613910
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'salaestudio7').first_or_initialize
place.name = 'Sala de Estudio'
place.area = sj
place.latitude = -33.499164
place.longitude = -70.612049
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'salaestudio8').first_or_initialize
place.name = 'Sala de Estudio'
place.area = sj
place.latitude = -33.500046
place.longitude = -70.613357
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'salaestudio9').first_or_initialize
place.name = 'Sala de Estudio'
place.area = sj
place.latitude = -33.499632
place.longitude = -70.612851
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'sala_profe_enf').first_or_initialize
place.name = 'Sala de Profesores'
place.area = sj
place.latitude = -33.498830
place.longitude = -70.613133
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'sala_trab_prac_cc_bio').first_or_initialize
place.name = 'Sala de Trabajos Prácticos'
place.area = sj
place.latitude = -33.441733
place.longitude = -70.639850
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'salaestudio17').first_or_initialize
place.name = 'Sala de estudio'
place.area = sj
place.latitude = -33.441566
place.longitude = -70.640499
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'salaestudio18').first_or_initialize
place.name = 'Sala de estudio'
place.area = sj
place.latitude = -33.441641
place.longitude = -70.639680
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'salaestudio19').first_or_initialize
place.name = 'Sala de estudio'
place.area = sj
place.latitude = -33.446282
place.longitude = -70.594125
place.floor = '1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'salaestudio20').first_or_initialize
place.name = 'Sala de estudio'
place.area = sj
place.latitude = -33.445500
place.longitude = -70.593583
place.floor = '1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'salaestudio21').first_or_initialize
place.name = 'Sala de estudio'
place.area = sj
place.latitude = -33.445589
place.longitude = -70.593302
place.floor = '1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'Multisala_ING').first_or_initialize
place.name = 'Sala de usos múltiples'
place.area = sj
place.latitude = -33.499535
place.longitude = -70.613223
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'multisala_sociales').first_or_initialize
place.name = 'Sala de usos múltiples'
place.area = sj
place.latitude = -33.498773
place.longitude = -70.609780
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'CS.SEM1').first_or_initialize
place.name = 'Salas Seminario'
place.area = sj
place.latitude = -33.500335
place.longitude = -70.610305
place.floor = '2?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'CS.SEM2').first_or_initialize
place.name = 'Salas Seminario'
place.area = sj
place.latitude = -33.500335
place.longitude = -70.610305
place.floor = '2?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'SaludEstudiantil_Hall').first_or_initialize
place.name = 'Salud Estudiantil'
place.area = sj
place.latitude = -33.497772
place.longitude = -70.613086
place.floor = '3'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'secret_academica').first_or_initialize
place.name = 'Secretaría Académica'
place.area = sj
place.latitude = -33.498501
place.longitude = -70.610128
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'seminario_h').first_or_initialize
place.name = 'Seminario'
place.area = sj
place.latitude = -33.496698
place.longitude = -70.614087
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'simulacion_h').first_or_initialize
place.name = 'Simulación'
place.area = sj
place.latitude = -33.497414
place.longitude = -70.613503
place.floor = '-1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'Sodexo_hall').first_or_initialize
place.name = 'Sodexo'
place.area = sj
place.latitude = -33.498054
place.longitude = -70.613483
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'almuerzo1').first_or_initialize
place.name = 'Sodexo'
place.area = sj
place.latitude = -33.496978
place.longitude = -70.610896
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'almuerzo10').first_or_initialize
place.name = 'Sodexo'
place.area = sj
place.latitude = -33.502811
place.longitude = -70.611480
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'almuerzo11').first_or_initialize
place.name = 'Sodexo'
place.area = sj
place.latitude = -33.441281
place.longitude = -70.640093
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'almuerzo2').first_or_initialize
place.name = 'Sodexo'
place.area = sj
place.latitude = -33.497342
place.longitude = -70.613580
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'almuerzo3').first_or_initialize
place.name = 'Sodexo'
place.area = sj
place.latitude = -33.499087
place.longitude = -70.613693
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'almuerzo4').first_or_initialize
place.name = 'Sodexo'
place.area = sj
place.latitude = -33.499634
place.longitude = -70.613803
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'almuerzo5').first_or_initialize
place.name = 'Sodexo'
place.area = sj
place.latitude = -33.499729
place.longitude = -70.609654
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'almuerzo6').first_or_initialize
place.name = 'Sodexo'
place.area = sj
place.latitude = -33.496555
place.longitude = -70.609043
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'almuerzo7').first_or_initialize
place.name = 'Sodexo'
place.area = sj
place.latitude = -33.497868
place.longitude = -70.609826
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'almuerzo8').first_or_initialize
place.name = 'Sodexo'
place.area = sj
place.latitude = -33.498054
place.longitude = -70.613483
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'almuerzo9').first_or_initialize
place.name = 'Sodexo'
place.area = sj
place.latitude = -33.498272
place.longitude = -70.616351
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'sodexo_cc').first_or_initialize
place.name = 'Sodexo'
place.area = sj
place.latitude = -33.441281
place.longitude = -70.640093
place.floor = '1-2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'Sodexo_dpt').first_or_initialize
place.name = 'Sodexo (Pérgola)'
place.area = sj
place.latitude = -33.499729
place.longitude = -70.609654
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'starbucks_sociales').first_or_initialize
place.name = 'Starbucks'
place.area = sj
place.latitude = -33.498104
place.longitude = -70.610312
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'sub_dir_admin').first_or_initialize
place.name = 'Subdirección Administrativo'
place.area = sj
place.latitude = -33.497125
place.longitude = -70.611542
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'sub_dir_asuntos_estudiantiles').first_or_initialize
place.name = 'Subdirección de Asuntos Estudiantiles'
place.area = sj
place.latitude = -33.496938
place.longitude = -70.611674
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'subdir_pregrado_sociales').first_or_initialize
place.name = 'Subdirección de Pregrado'
place.area = sj
place.latitude = -33.498403
place.longitude = -70.610134
place.floor = '?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'banco3').first_or_initialize
place.name = 'Sucursal Santander'
place.area = sj
place.latitude = -33.441761
place.longitude = -70.640545
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'T1220').first_or_initialize
place.name = 'T1220'
place.area = sj
place.latitude = -33.498096
place.longitude = -70.614412
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'T1221').first_or_initialize
place.name = 'T1221'
place.area = sj
place.latitude = -33.498136
place.longitude = -70.614242
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'T2222').first_or_initialize
place.name = 'T2222'
place.area = sj
place.latitude = -33.498077
place.longitude = -70.614145
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'T2223').first_or_initialize
place.name = 'T2223'
place.area = sj
place.latitude = -33.498087
place.longitude = -70.614106
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'T3224').first_or_initialize
place.name = 'T3224'
place.area = sj
place.latitude = -33.498055
place.longitude = -70.613960
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'T3225').first_or_initialize
place.name = 'T3225'
place.area = sj
place.latitude = -33.498060
place.longitude = -70.613911
place.floor = '2'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'taller_vidrio').first_or_initialize
place.name = 'Taller de Vidrio'
place.area = sj
place.latitude = -33.499052
place.longitude = -70.610896
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'TEA').first_or_initialize
place.name = 'Teatro'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'teleduc_or').first_or_initialize
place.name = 'Teleduc'
place.area = sj
place.latitude = -33.446029
place.longitude = -70.594659
place.floor = '1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'templo_or').first_or_initialize
place.name = 'Templo Oriente'
place.area = sj
place.latitude = -33.445984
place.longitude = -70.593746
place.floor = '1?'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'TUNEL_ORIE').first_or_initialize
place.name = 'Túnel Oriente'
place.area = lc
place.latitude = -33.419707
place.longitude = -70.618311
place.floor = '1'
place.information = 'Túnel oriente'
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'TUNEL_PONI').first_or_initialize
place.name = 'Túnel Poniente'
place.area = lc
place.latitude = -33.419707
place.longitude = -70.618311
place.floor = '1'
place.information = 'Túnel Poniente.'
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'A.VERDES').first_or_initialize
place.name = 'Áreas verdes'
place.area = sj
place.latitude = 0.0
place.longitude = 0.0
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

place = Place.where(identifier: 'optica_plasma').first_or_initialize
place.name = 'Óptica y Plasma'
place.area = sj
place.latitude = -33.499558
place.longitude = -70.611290
place.floor = '1'
place.information = nil
place.zoom = 0.0
place.angle = 0.0
place.tilt = 0.0

place.category_list = 'classroom'
place.save!

#-------------------------------------------------

puts("Created #{Place.count} #{Place.to_s.pluralize.downcase}")
Place.reindex