puts('Creating faculties')

# Source: http://www.uc.cl/es/facultades-y-unidades-academicas

# == Schema Information
#
# Table name: faculties
#
#  id           :integer          not null, primary key
#  abbreviation :string(255)
#  short_name   :string(255)
#  name         :string(255)
#  campus_id    :integer          not null
#  address      :string(255)
#  phone        :string(255)
#  email        :string(255)
#  url          :string(255)
#  facebook     :string(255)
#  information  :text             default("")
#  twitter      :string(255)
#  place_id     :integer
#  created_at   :datetime
#  updated_at   :datetime
#

uc = Organization.where(abbreviation: 'UC').first_or_initialize
sj = Campus.where(abbreviation: 'SJ').first_or_initialize
cc = Campus.where(abbreviation: 'CC').first_or_initialize
lc = Campus.where(abbreviation: 'LC').first_or_initialize
co = Campus.where(abbreviation: 'OR').first_or_initialize
vr = Campus.where(abbreviation: 'VR').first_or_initialize
ex = Campus.where(abbreviation: 'EX').first_or_initialize


agro = Faculty.where(abbreviation: 'AGC').first_or_initialize
agro.name = 'Facultad de Agronomía e Ingeniería Forestal'
agro.short_name = 'Agronomía e Ingeniería Forestal'
agro.campus = sj
agro.address = ''
agro.url = 'http://agronomia.uc.cl/'
agro.facebook = 'https://www.facebook.com/faifuc'
agro.twitter = 'https://twitter.com/AgroyForestalUC'
agro.phone = '(56 2) 2354 4895'
agro.email = 'agroforestaluc.cl'
agro.information = nil
agro.localization = Place.where(identifier: 'FACULTY AGC').first_or_initialize
agro.localization.latitude = -33.496591
agro.localization.longitude = -70.609579
agro.localization.area = sj
agro.localization.zoom = 0
agro.localization.angle = 0
agro.localization.tilt = 0
agro.localization.category_list = 'area, faculty'
agro.set_banner_from_url(banner_url_for(agro))
agro.save!


fadeu = Faculty.where(abbreviation: 'FADEU').first_or_initialize
fadeu.name = 'Facultad de Arquitectura, Diseño y Estudios Urbanos'
fadeu.short_name = 'Arquitectura, Diseño y Estudios Urbanos'
fadeu.campus = lc
fadeu.address = ''
fadeu.url = 'http://fadeu.puc.cl/'
fadeu.facebook = 'https://www.facebook.com/fadeuuc'
fadeu.twitter = 'https://twitter.com/FADEU_UC'
fadeu.phone = '(56) (2) 2354 7750'
fadeu.email = 'fadeuuc.cl'
fadeu.information = 'Facultad de Arquitectura, Diseño y Estudios Urbanos de la Pontificia Universidad Católica de Chile.\nLa facultad está compuesta por 3 unidades: la Escuela de Arquitectura, la Escuela de Diseño y el Instituto de Estudios Urbanos.'
fadeu.localization = Place.where(identifier: 'FACULTY FADEU').first_or_initialize
fadeu.localization.latitude = -33.419495
fadeu.localization.longitude = -70.618351
fadeu.localization.area = lc
fadeu.localization.zoom = 0
fadeu.localization.angle = 0
fadeu.localization.tilt = 0
fadeu.localization.category_list = 'area, faculty'
fadeu.set_banner_from_url(banner_url_for(fadeu))
fadeu.save!


artes = Faculty.where(abbreviation: 'ART').first_or_initialize
artes.name = 'Facultad de Artes'
artes.short_name = 'Artes'
artes.campus = co
artes.address = 'Avda. Jaime Guzmán Errázuriz 3300, Providencia, Santiago, Chile.'
artes.url = 'http://artes.uc.cl/'
artes.facebook = 'https://www.facebook.com/ExtensionFacultadArtesUC'
artes.twitter = 'https://twitter.com/facartesuc'
artes.phone = '+562 2354 2000'
artes.email = 'mjleonuc.cl'
artes.information = 'Somos una red dedicada a generar espacios diálogo y comunicar las actividades de los estudiantes, egresados y profesores de la Facultad de Artes UC y de otros núcleos de desarrollo artístico en Chile. Escríbenos a mjleonuc.cl'
artes.localization = Place.where(identifier: 'FACULTY ART').first_or_initialize
artes.localization.latitude = -33.446092
artes.localization.longitude = -70.593395
artes.localization.area = co
artes.localization.zoom = 0
artes.localization.angle = 0
artes.localization.tilt = 0
artes.localization.category_list = 'area, faculty'
artes.set_banner_from_url(banner_url_for(artes))
artes.save!


bio = Faculty.where(abbreviation: 'BIO').first_or_initialize
bio.name = 'Facultad de Ciencias Biológicas'
bio.short_name = 'Ciencias Biológicas'
bio.campus = cc
bio.address = ''
bio.url = 'http://biologia.uc.cl/es/'
bio.facebook = nil
bio.twitter = nil
bio.phone = nil
bio.email = 'decanatobio.puc.cl'
bio.information = nil
bio.localization = Place.where(identifier: 'FACULTY BIO').first_or_initialize
bio.localization.latitude = -33.441677
bio.localization.longitude =  -70.639494
bio.localization.area = cc
bio.localization.zoom = 0
bio.localization.angle = 0
bio.localization.tilt = 0
bio.localization.category_list = 'area, faculty'
bio.set_banner_from_url(banner_url_for(bio))
bio.save!


eco = Faculty.where(abbreviation: 'EA').first_or_initialize
eco.name = 'Facultad de Ciencias Económicas y Administrativas'
eco.short_name = 'Ciencias Económicas y Administrativas'
eco.campus = sj
eco.address = ''
eco.url = 'http://economiayadministracion.uc.cl/'
eco.facebook = nil
eco.twitter = nil
eco.phone = nil
eco.email = nil
eco.information = nil
eco.localization = Place.where(identifier: 'FACULTY EA').first_or_initialize
eco.localization.latitude = -33.497020
eco.localization.longitude = -70.611462
eco.localization.area = sj
eco.localization.zoom = 0
eco.localization.angle = 0
eco.localization.tilt = 0
eco.localization.category_list = 'area, faculty'
eco.set_banner_from_url(banner_url_for(eco))
eco.save!


sociales = Faculty.where(abbreviation: 'SOC').first_or_initialize
sociales.name = 'Facultad de Ciencias Sociales'
sociales.short_name = 'Ciencias Sociales'
sociales.campus = sj
sociales.address = ''
sociales.url = nil
sociales.facebook = nil
sociales.twitter = nil
sociales.phone = nil
sociales.email = nil
sociales.information = nil
sociales.localization = Place.where(identifier: 'FACULTY SOC').first_or_initialize
sociales.localization.latitude = -33.498357
sociales.localization.longitude = -70.610006
sociales.localization.area = sj
sociales.localization.zoom = 0
sociales.localization.angle = 0
sociales.localization.tilt = 0
sociales.localization.category_list = 'area, faculty'
sociales.set_banner_from_url(banner_url_for(sociales))
sociales.save!


comunicaciones = Faculty.where(abbreviation: 'COM').first_or_initialize
comunicaciones.name = 'Facultad de Comunicaciones'
comunicaciones.short_name = 'Comunicaciones'
comunicaciones.campus = cc
comunicaciones.address = ''
comunicaciones.url = 'http://comunicaciones.uc.cl/'
comunicaciones.facebook = 'https://www.facebook.com/fcomuc'
comunicaciones.twitter = 'https://twitter.com/fcomuc'
comunicaciones.phone = '(56-2) 23542020'
comunicaciones.email = 'fcomunicacionesuc.cl'
comunicaciones.information = nil
comunicaciones.localization = Place.where(identifier: 'FACULTY COM').first_or_initialize
comunicaciones.localization.latitude = -33.441442
comunicaciones.localization.longitude = -70.640749
comunicaciones.localization.area = cc
comunicaciones.localization.zoom = 0
comunicaciones.localization.angle = 0
comunicaciones.localization.tilt = 0
comunicaciones.localization.category_list = 'area, faculty'
comunicaciones.set_banner_from_url(banner_url_for(comunicaciones))
comunicaciones.save!


letras = Faculty.where(abbreviation: 'LET').first_or_initialize
letras.name = 'Facultad de Letras'
letras.short_name = 'Letras'
letras.campus = sj
letras.address = ''
letras.url = 'http://www7.uc.cl/letras/'
letras.facebook = 'https://www.facebook.com/letrasuc'
letras.twitter = nil
letras.phone = '223542000'
letras.email = nil
letras.information = nil
letras.localization = Place.where(identifier: 'FACULTY LET').first_or_initialize
letras.localization.latitude = -33.496700
letras.localization.longitude = -70.613790
letras.localization.area = sj
letras.localization.zoom = 0
letras.localization.angle = 0
letras.localization.tilt = 0
letras.localization.category_list = 'area, faculty'
letras.set_banner_from_url(banner_url_for(letras))
letras.save!


derecho = Faculty.where(abbreviation: 'DE').first_or_initialize
derecho.name = 'Facultad de Derecho'
derecho.short_name = 'Derecho'
derecho.campus = cc
derecho.address = ''
derecho.url = 'http://derecho.uc.cl/'
derecho.facebook = 'https://www.facebook.com/derechouc'
derecho.twitter = 'https://twitter.com/derechouc'
derecho.phone = '(56) (2) 2 354 2000'
derecho.email = 'comunicacionesderechoucuc.cl'
derecho.information = nil
derecho.localization = Place.where(identifier: 'FACULTY DE').first_or_initialize
derecho.localization.latitude = -33.441022
derecho.localization.longitude = -70.640158
derecho.localization.area = cc
derecho.localization.zoom = 0
derecho.localization.angle = 0
derecho.localization.tilt = 0
derecho.localization.category_list = 'area, faculty'
derecho.set_banner_from_url(banner_url_for(derecho))
derecho.save!


educacion = Faculty.where(abbreviation: 'EDU').first_or_initialize
educacion.name = 'Facultad de Educación'
educacion.short_name = 'Educación'
educacion.campus = sj
educacion.address = ''
educacion.url = 'http://educacion.uc.cl/'
educacion.facebook = nil
educacion.twitter = nil
educacion.phone = '+56 (2) 22354 5350'
educacion.email = 'educacionucuc.cl'
educacion.information = nil
educacion.localization = Place.where(identifier: 'FACULTY EDU').first_or_initialize
educacion.localization.latitude = -33.498128
educacion.localization.longitude = -70.614241
educacion.localization.area = sj
educacion.localization.zoom = 0
educacion.localization.angle = 0
educacion.localization.tilt = 0
educacion.localization.category_list = 'area, faculty'
educacion.set_banner_from_url(banner_url_for(educacion))
educacion.save!


filosofia = Faculty.where(abbreviation: 'FIL').first_or_initialize
filosofia.name = 'Facultad de Filosofía'
filosofia.short_name = 'Filosofía'
filosofia.campus = sj
filosofia.address = ''
filosofia.url = nil
filosofia.facebook = nil
filosofia.twitter = nil
filosofia.phone = nil
filosofia.email = nil
filosofia.information = nil
filosofia.localization = Place.where(identifier: 'FACULTY FIL').first_or_initialize
filosofia.localization.latitude = -33.497217
filosofia.localization.longitude = -70.613997
filosofia.localization.area = sj
filosofia.localization.zoom = 0
filosofia.localization.angle = 0
filosofia.localization.tilt = 0
filosofia.localization.category_list = 'area, faculty'
filosofia.set_banner_from_url(banner_url_for(filosofia))
filosofia.save!


fisica = Faculty.where(abbreviation: 'FIS').first_or_initialize
fisica.name = 'Facultad de Física'
fisica.short_name = 'Física'
fisica.campus = sj
fisica.address = ''
fisica.url = 'http://fisica.uc.cl/'
fisica.facebook = nil
fisica.twitter = nil
fisica.phone = '(56) (2) 354 4470'
fisica.email = nil
fisica.information = nil
fisica.localization = Place.where(identifier: 'FACULTY FIS').first_or_initialize
fisica.localization.latitude = -33.499441
fisica.localization.longitude = -70.611044
fisica.localization.area = sj
fisica.localization.zoom = 0
fisica.localization.angle = 0
fisica.localization.tilt = 0
fisica.localization.category_list = 'area, faculty'
fisica.set_banner_from_url(banner_url_for(fisica))
fisica.save!


historia = Faculty.where(abbreviation: 'HIS').first_or_initialize
historia.name = 'Facultad de Historia, Geografía y Ciencia Política'
historia.short_name = 'Historia, Geografía y Ciencia Política'
historia.campus = sj
historia.address = ''
historia.url = 'http://www7.uc.cl/historiageografiaycienciapolitica/'
historia.facebook = nil
historia.twitter = nil
historia.phone = '3547808'
historia.email = nil
historia.information = nil
historia.localization = Place.where(identifier: 'FACULTY HIS').first_or_initialize
historia.localization.latitude = -33.497075
historia.localization.longitude = -70.613188
historia.localization.area = sj
historia.localization.zoom = 0
historia.localization.angle = 0
historia.localization.tilt = 0
historia.localization.category_list = 'area, faculty'
historia.set_banner_from_url(banner_url_for(historia))
historia.save!


construccion = Faculty.where(abbreviation: 'CCL').first_or_initialize
construccion.name = 'Escuela de Construcción Civil'
construccion.short_name = 'Construcción Civil'
construccion.campus = sj
construccion.address = ''
construccion.url = 'http://www7.uc.cl/construc_civil'
construccion.facebook = nil
construccion.twitter = nil
construccion.phone = '6864565'
construccion.email = 'webeccucuc.cl'
construccion.information = nil
construccion.localization = Place.where(identifier: 'FACULTY CCL').first_or_initialize
construccion.localization.latitude = -33.498969
construccion.localization.longitude = -70.613837
construccion.localization.area = sj
construccion.localization.zoom = 0
construccion.localization.angle = 0
construccion.localization.tilt = 0
construccion.localization.category_list = 'area, faculty'
construccion.set_banner_from_url(banner_url_for(construccion))
construccion.save!


ingenieria = Faculty.where(abbreviation: 'ING').first_or_initialize
ingenieria.name = 'Escuela de Ingeniería'
ingenieria.short_name = 'Ingeniería'
ingenieria.campus = sj
ingenieria.address = ''
ingenieria.url = 'http://www.ing.puc.cl/'
ingenieria.facebook = 'https://www.facebook.com/EscueladeIngenieriaUniversidadCatolica'
ingenieria.twitter = 'https://twitter.com/ingenieriaUC'
ingenieria.phone = '+56 2 354 11 93'
ingenieria.email = 'comunicacionesing.puc.cl'
ingenieria.information = nil
ingenieria.localization = Place.where(identifier: 'FACULTY ING').first_or_initialize
ingenieria.localization.latitude = -33.500000
ingenieria.localization.longitude = -70.612870
ingenieria.localization.area = sj
ingenieria.localization.zoom = 0
ingenieria.localization.angle = 0
ingenieria.localization.tilt = 0
ingenieria.localization.category_list = 'area, faculty'
ingenieria.set_banner_from_url(banner_url_for(ingenieria))
ingenieria.save!


matematica = Faculty.where(abbreviation: 'MAT').first_or_initialize
matematica.name = 'Facultad de Matemática'
matematica.short_name = 'Matemática'
matematica.campus = sj
matematica.address = 'Edificio Rolando Chuaqui. Facultad de Matemáticas. Avda. Vicuña Mackenna #4860. Macul, Santiago. Chile.'
matematica.url = 'http://www.mat.uc.cl/'
matematica.facebook = nil
matematica.twitter = nil
matematica.phone = '(56 2) 354 4511'
matematica.email = nil
matematica.information = nil
matematica.localization = Place.where(identifier: 'FACULTY MAT').first_or_initialize
matematica.localization.latitude = -33.499796
matematica.localization.longitude = -70.610610
matematica.localization.area = sj
matematica.localization.zoom = 0
matematica.localization.angle = 0
matematica.localization.tilt = 0
matematica.localization.category_list = 'area, faculty'
matematica.set_banner_from_url(banner_url_for(matematica))
matematica.save!


enfermeria = Faculty.where(abbreviation: 'ENF').first_or_initialize
enfermeria.name = 'Escuela de Enfermería'
enfermeria.short_name = 'Enfermería'
enfermeria.campus = sj
enfermeria.address = ''
enfermeria.url = nil
enfermeria.facebook = 'https://www.facebook.com/escueladeenfermeria.uc'
enfermeria.twitter = 'https://twitter.com/Enfermeria_UC'
enfermeria.phone = '(56-2) 2354 5831'
enfermeria.email = 'escueladeenfermeriauc.cl'
enfermeria.information = nil
enfermeria.localization = Place.where(identifier: 'FACULTY ENF').first_or_initialize
enfermeria.localization.latitude = -33.498938
enfermeria.localization.longitude = -70.613059
enfermeria.localization.area = sj
enfermeria.localization.zoom = 0
enfermeria.localization.angle = 0
enfermeria.localization.tilt = 0
enfermeria.localization.category_list = 'area, faculty'
enfermeria.set_banner_from_url(banner_url_for(enfermeria))
enfermeria.save!


medicina = Faculty.where(abbreviation: 'MED').first_or_initialize
medicina.name = 'Escuela de Medicina'
medicina.short_name = 'Medicina'
medicina.campus = cc
medicina.address = 'Alameda Libertador Bernardo O´Higgins 340, 8331150 Santiago de Chile'
medicina.url = 'http://medicina.uc.cl/'
medicina.facebook = 'https://www.facebook.com/escuelamedicinauc'
medicina.twitter = nil
medicina.phone = '(56) (2) 354 2000'
medicina.email = 'escuelamedicinauc.cl'
medicina.information = nil
medicina.localization = Place.where(identifier: 'FACULTY MED').first_or_initialize
medicina.localization.latitude = -33.441458
medicina.localization.longitude = -70.640379
medicina.localization.area = cc
medicina.localization.zoom = 0
medicina.localization.angle = 0
medicina.localization.tilt = 0
medicina.localization.category_list = 'area, faculty'
medicina.set_banner_from_url(banner_url_for(medicina))
medicina.save!


quimica = Faculty.where(abbreviation: 'QIM').first_or_initialize
quimica.name = 'Facultad de Química'
quimica.short_name = 'Química'
quimica.campus = sj
quimica.address = ''
quimica.url = 'http://www.quimica.uc.cl/'
quimica.facebook = nil
quimica.twitter = nil
quimica.phone = '(56) (2) 2354 2000'
quimica.email = nil
quimica.information = nil
quimica.localization = Place.where(identifier: 'FACULTY QIM').first_or_initialize
quimica.localization.identifier = ""
quimica.localization.name = ""
quimica.localization.latitude = -33.499016
quimica.localization.longitude = -70.611008
quimica.localization.area = sj
quimica.localization.zoom = 0
quimica.localization.angle = 0
quimica.localization.tilt = 0
quimica.localization.category_list = 'area, faculty'
quimica.set_banner_from_url(banner_url_for(quimica))
quimica.save!


teologia = Faculty.where(abbreviation: 'TTF').first_or_initialize
teologia.name = 'Facultad de Teología'
teologia.short_name = 'Teología'
teologia.campus = sj
teologia.address = ''
teologia.url = 'http://teologia.uc.cl/'
teologia.facebook = nil
teologia.twitter = nil
teologia.phone = '(56) (2) 2354 1634'
teologia.email = nil
teologia.information = nil
teologia.localization = Place.where(identifier: 'FACULTY TTF').first_or_initialize
teologia.localization.identifier = ""
teologia.localization.name = ""
teologia.localization.latitude = -33.497833
teologia.localization.longitude = -70.610808
teologia.localization.area = sj
teologia.localization.zoom = 0
teologia.localization.angle = 0
teologia.localization.tilt = 0
teologia.localization.category_list = 'area, faculty'
teologia.set_banner_from_url(banner_url_for(teologia))
teologia.save!


villarica = Faculty.where(abbreviation: 'VR').first_or_initialize
villarica.name = 'Campus Villarrica'
villarica.short_name = 'Villarrica'
villarica.campus = vr
villarica.address = 'Pontificia Universidad Católica de Chile - Bernardo OHiggins 501 - Villarrica - Chile'
villarica.url = 'http://villarrica.uc.cl/'
villarica.facebook = nil
villarica.twitter = 'https://twitter.com/villarricauc'
villarica.phone = '(45) 2411830'
villarica.email = nil
villarica.information = nil
villarica.localization = Place.where(identifier: 'FACULTY VR').first_or_initialize
villarica.localization.identifier = ""
villarica.localization.name = ""
villarica.localization.latitude = 0.0
villarica.localization.longitude = 0.0
villarica.localization.area = vr
villarica.localization.zoom = 0
villarica.localization.angle = 0
villarica.localization.tilt = 0
villarica.localization.category_list = 'area, faculty'
villarica.set_banner_from_url(banner_url_for(villarica))
villarica.save!


college = Faculty.where(abbreviation: 'D').first_or_initialize
college.name = 'College'
college.short_name = 'College'
college.campus = sj
college.address = ''
college.url = 'http://college.uc.cl/'
college.facebook = nil
college.twitter = nil
college.phone = '(56) (2) 2354 5774'
college.email = 'contactocollegeuc.cl'
college.information = nil
college.localization = Place.where(identifier: 'FACULTY D').first_or_initialize
college.localization.identifier = ""
college.localization.name = ""
college.localization.latitude = -33.500481
college.localization.longitude = -70.610954
college.localization.area = sj
college.localization.zoom = 0
college.localization.angle = 0
college.localization.tilt = 0
college.localization.category_list = 'area, faculty'
college.set_banner_from_url(banner_url_for(college))
college.save!


puts("Created #{Faculty.count} #{Faculty.to_s.pluralize.downcase}")
Faculty.reindex