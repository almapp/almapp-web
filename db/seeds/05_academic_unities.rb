puts('Creating Academic Unities')

# == Schema Information
#
# Table name: academic_unities
#
#  id           :integer          not null, primary key
#  abbreviation :string(255)
#  short_name   :string(255)
#  name         :string(255)
#  faculty_id   :integer
#  url          :string(255)
#  email        :string(255)
#  address      :string(255)
#  information  :text             default("")
#  facebook     :string(255)
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
a_agro.short_name = 'Agronomía e Ingeniería Forestal'
a_agro.faculty = agro
a_agro.url = ''
a_agro.localization = Place.where(identifier: "ACADEMICUNITY #{agro.abbreviation}").first_or_initialize
a_agro.localization.identifier = ''
a_agro.localization.name = ''
a_agro.localization.latitude = agro.latitude
a_agro.localization.longitude = agro.longitude
a_agro.localization.area = agro
a_agro.localization.zoom = 0
a_agro.localization.angle = 0
a_agro.localization.tilt = 0
a_agro.localization.category_list = 'area, academic_unity'
a_agro.set_banner_from_url(banner_url_for(a_agro))
a_agro.save!

a_arq = AcademicUnity.where(abbreviation: 'ARQ').first_or_initialize
a_arq.short_name = 'Arquitectura'
a_arq.faculty = fadeu
a_arq.url = ''
a_arq.localization = Place.where(identifier: 'ACADEMICUNITY ARQ').first_or_initialize
a_arq.localization.identifier = ''
a_arq.localization.name = ''
a_arq.localization.latitude = -33.419454
a_arq.localization.longitude = -70.618540
a_arq.localization.area = fadeu
a_arq.localization.zoom = 0
a_arq.localization.angle = 0
a_arq.localization.tilt = 0
a_arq.localization.category_list = 'area, academic_unity'
a_arq.set_banner_from_url(banner_url_for(a_arq))
a_arq.save!

a_art = AcademicUnity.where(abbreviation: 'ART').first_or_initialize
a_art.short_name = 'Arte'
a_art.faculty = artes
a_art.url = ''
a_art.set_banner_from_url(banner_url_for(a_art))
a_art.save!

a_astro = AcademicUnity.where(abbreviation: 'ASTFIS').first_or_initialize
a_astro.short_name = 'Astrofísica'
a_astro.faculty = fisica
a_astro.url = ''
a_astro.localization = Place.where(identifier: 'ACADEMICUNITY ASTFIS').first_or_initialize
a_astro.localization.identifier = ''
a_astro.localization.name = ''
a_astro.localization.latitude = -33.499853
a_astro.localization.longitude = -70.611439
a_astro.localization.area = fisica
a_astro.localization.zoom = 0
a_astro.localization.angle = 0
a_astro.localization.tilt = 0
a_astro.localization.category_list = 'area, academic_unity'
a_astro.set_banner_from_url(banner_url_for(a_astro))
a_astro.save!

a_bio = AcademicUnity.where(abbreviation: 'BIO').first_or_initialize
a_bio.short_name = 'Ciencias Biológicas'
a_bio.faculty = bio
a_bio.url = ''
a_bio.localization = Place.where(identifier: 'ACADEMICUNITY BIO').first_or_initialize
a_bio.localization.identifier = ''
a_bio.localization.name = ''
a_bio.localization.latitude = -33.441702
a_bio.localization.longitude = -70.639786
a_bio.localization.area = bio
a_bio.localization.zoom = 0
a_bio.localization.angle = 0
a_bio.localization.tilt = 0
a_bio.localization.category_list = 'area, academic_unity'
a_bio.set_banner_from_url(banner_url_for(a_bio))
a_bio.save!

a_salud = AcademicUnity.where(abbreviation: 'CS').first_or_initialize
a_salud.short_name = 'Ciencias de la Salud'
a_salud.faculty = bio
a_salud.url = ''
a_salud.localization = Place.where(identifier: 'ACADEMICUNITY CS').first_or_initialize
a_salud.localization.identifier = ''
a_salud.localization.name = ''
a_salud.localization.latitude = -33.499748
a_salud.localization.longitude = -70.610252
a_salud.localization.area = sj
a_salud.localization.zoom = 0
a_salud.localization.angle = 0
a_salud.localization.tilt = 0
a_salud.localization.category_list = 'area, academic_unity'
a_salud.set_banner_from_url(banner_url_for(a_salud))
a_salud.save!

a_eco = AcademicUnity.where(abbreviation: eco.abbreviation).first_or_initialize
a_eco.short_name = 'Ciencias Económicas y Administrativas'
a_eco.faculty = eco
a_eco.url = ''
a_eco.localization = Place.where(identifier: "ACADEMICUNITY #{a_eco.abbreviation}").first_or_initialize
a_eco.localization.identifier = ''
a_eco.localization.name = ''
a_eco.localization.latitude = eco.latitude
a_eco.localization.longitude = eco.longitude
a_eco.localization.area = eco
a_eco.localization.zoom = 0
a_eco.localization.angle = 0
a_eco.localization.tilt = 0
a_eco.localization.category_list = 'area, academic_unity'
a_eco.set_banner_from_url(banner_url_for(a_eco))
a_eco.save!

a_politica = AcademicUnity.where(abbreviation: 'ICP').first_or_initialize
a_politica.short_name = 'Ciencia Política'
a_politica.faculty = historia
a_politica.url = ''
a_politica.localization = Place.where(identifier: 'ACADEMICUNITY ICP').first_or_initialize
a_politica.localization.identifier = ''
a_politica.localization.name = ''
a_politica.localization.latitude = -33.497035
a_politica.localization.longitude = -70.613200
a_politica.localization.area = historia
a_politica.localization.zoom = 0
a_politica.localization.angle = 0
a_politica.localization.tilt = 0
a_politica.localization.category_list = 'area, academic_unity'
a_politica.set_banner_from_url(banner_url_for(a_politica))
a_politica.save!

a_college = AcademicUnity.where(abbreviation: college.abbreviation).first_or_initialize
a_college.short_name = 'College'
a_college.faculty = college
a_college.url = ''
a_college.localization = Place.where(identifier: "ACADEMICUNITY #{college.abbreviation}").first_or_initialize
a_college.localization.identifier = ''
a_college.localization.name = ''
a_college.localization.latitude = college.latitude
a_college.localization.longitude = college.longitude
a_college.localization.area = college
a_college.localization.zoom = 0
a_college.localization.angle = 0
a_college.localization.tilt = 0
a_college.localization.category_list = 'area, academic_unity'
a_college.set_banner_from_url(banner_url_for(a_college))
a_college.save!

a_com = AcademicUnity.where(abbreviation: comunicaciones.abbreviation).first_or_initialize
a_com.short_name = 'Comunicaciones'
a_com.faculty = comunicaciones
a_com.url = ''
a_com.localization = Place.where(identifier: "ACADEMICUNITY #{comunicaciones.abbreviation}").first_or_initialize
a_com.localization.identifier = ''
a_com.localization.name = ''
a_com.localization.latitude = comunicaciones.latitude
a_com.localization.longitude = comunicaciones.longitude
a_com.localization.area = comunicaciones
a_com.localization.zoom = 0
a_com.localization.angle = 0
a_com.localization.tilt = 0
a_com.localization.category_list = 'area, academic_unity'
a_com.set_banner_from_url(banner_url_for(a_com))
a_com.save!

a_cc = AcademicUnity.where(abbreviation: construccion.abbreviation).first_or_initialize
a_cc.short_name = 'Construcción Civil'
a_cc.faculty = construccion
a_cc.url = ''
a_cc.localization = Place.where(identifier: "ACADEMICUNITY #{construccion.abbreviation}").first_or_initialize
a_cc.localization.identifier = ''
a_cc.localization.name = ''
a_cc.localization.latitude = construccion.latitude
a_cc.localization.longitude = construccion.longitude
a_cc.localization.area = construccion
a_cc.localization.zoom = 0
a_cc.localization.angle = 0
a_cc.localization.tilt = 0
a_cc.localization.category_list = 'area, academic_unity'
a_cc.set_banner_from_url(banner_url_for(a_cc))
a_cc.save!

a_der = AcademicUnity.where(abbreviation: derecho.abbreviation).first_or_initialize
a_der.short_name = 'Derecho'
a_der.faculty = derecho
a_der.url = ''
a_der.localization = Place.where(identifier: "ACADEMICUNITY #{derecho.abbreviation}").first_or_initialize
a_der.localization.identifier = ''
a_der.localization.name = ''
a_der.localization.latitude = derecho.latitude
a_der.localization.longitude = derecho.longitude
a_der.localization.area = derecho
a_der.localization.zoom = 0
a_der.localization.angle = 0
a_der.localization.tilt = 0
a_der.localization.category_list = 'area, academic_unity'
a_der.set_banner_from_url(banner_url_for(a_der))
a_der.save!

a_dno = AcademicUnity.where(abbreviation: 'DNO').first_or_initialize
a_dno.short_name = 'Diseño'
a_dno.faculty = fadeu
a_dno.url = ''
a_dno.localization = Place.where(identifier: 'ACADEMICUNITY DNO').first_or_initialize
a_dno.localization.identifier = ''
a_dno.localization.name = ''
a_dno.localization.latitude = -33.418974
a_dno.localization.longitude = -70.618059
a_dno.localization.area = fadeu
a_dno.localization.zoom = 0
a_dno.localization.angle = 0
a_dno.localization.tilt = 0
a_dno.localization.category_list = 'area, academic_unity'
a_dno.set_banner_from_url(banner_url_for(a_dno))
a_dno.save!

a_edu = AcademicUnity.where(abbreviation: educacion.abbreviation).first_or_initialize
a_edu.short_name = 'Educación'
a_edu.faculty = educacion
a_edu.url = ''
a_edu.localization = Place.where(identifier: "ACADEMICUNITY #{educacion.abbreviation}").first_or_initialize
a_edu.localization.identifier = ''
a_edu.localization.name = ''
a_edu.localization.latitude = educacion.latitude
a_edu.localization.longitude = educacion.longitude
a_edu.localization.area = educacion
a_edu.localization.zoom = 0
a_edu.localization.angle = 0
a_edu.localization.tilt = 0
a_edu.localization.category_list = 'area, academic_unity'
a_edu.set_banner_from_url(banner_url_for(a_edu))
a_edu.save!

a_enf = AcademicUnity.where(abbreviation: enfermeria.abbreviation).first_or_initialize
a_enf.short_name = 'Enfermería'
a_enf.faculty = enfermeria
a_enf.url = ''
a_enf.localization = Place.where(identifier: "ACADEMICUNITY #{enfermeria.abbreviation}").first_or_initialize
a_enf.localization.identifier = ''
a_enf.localization.name = ''
a_enf.localization.latitude = enfermeria.latitude
a_enf.localization.longitude = enfermeria.longitude
a_enf.localization.area = enfermeria
a_enf.localization.zoom = 0
a_enf.localization.angle = 0
a_enf.localization.tilt = 0
a_enf.localization.category_list = 'area, academic_unity'
a_enf.set_banner_from_url(banner_url_for(a_enf))
a_enf.save!

a_est = AcademicUnity.where(abbreviation: 'EST').first_or_initialize
a_est.short_name = 'Estética'
a_est.faculty = artes
a_est.url = ''
a_est.set_banner_from_url(banner_url_for(a_est))
a_est.save!

a_urb = AcademicUnity.where(abbreviation: 'IEU').first_or_initialize
a_urb.short_name = 'Estudios Urbanos y Territoriales'
a_urb.faculty = fadeu
a_urb.url = ''
a_urb.localization = Place.where(identifier: 'ACADEMICUNITY ').first_or_initialize
a_urb.localization.identifier = ''
a_urb.localization.name = ''
a_urb.localization.latitude = -33.419214
a_urb.localization.longitude = -70.618350
a_urb.localization.area = fadeu
a_urb.localization.zoom = 0
a_urb.localization.angle = 0
a_urb.localization.tilt = 0
a_urb.localization.category_list = 'area, academic_unity'
a_urb.set_banner_from_url(banner_url_for(a_urb))
a_urb.save!

a_fil = AcademicUnity.where(abbreviation: filosofia.abbreviation).first_or_initialize
a_fil.short_name = 'Filosofía'
a_fil.faculty = filosofia
a_fil.url = ''
a_fil.localization = Place.where(identifier: "ACADEMICUNITY #{filosofia.abbreviation}").first_or_initialize
a_fil.localization.identifier = ''
a_fil.localization.name = ''
a_fil.localization.latitude = filosofia.latitude
a_fil.localization.longitude = filosofia.longitude
a_fil.localization.area = filosofia
a_fil.localization.zoom = 0
a_fil.localization.angle = 0
a_fil.localization.tilt = 0
a_fil.localization.category_list = 'area, academic_unity'
a_fil.set_banner_from_url(banner_url_for(a_fil))
a_fil.save!

a_fis = AcademicUnity.where(abbreviation: fisica.abbreviation).first_or_initialize
a_fis.short_name = 'Física'
a_fis.faculty = fisica
a_fis.url = ''
a_fis.localization = Place.where(identifier: "ACADEMICUNITY #{fisica.abbreviation}").first_or_initialize
a_fis.localization.identifier = ''
a_fis.localization.name = ''
a_fis.localization.latitude = fisica.latitude
a_fis.localization.longitude = fisica.longitude
a_fis.localization.area = fisica
a_fis.localization.zoom = 0
a_fis.localization.angle = 0
a_fis.localization.tilt = 0
a_fis.localization.category_list = 'area, academic_unity'
a_fis.set_banner_from_url(banner_url_for(a_fis))
a_fis.save!

a_geo = AcademicUnity.where(abbreviation: 'GEO').first_or_initialize
a_geo.short_name = 'Geografía'
a_geo.faculty = historia
a_geo.url = ''
a_geo.localization = Place.where(identifier: 'ACADEMICUNITY GEO').first_or_initialize
a_geo.localization.identifier = ''
a_geo.localization.name = ''
a_geo.localization.latitude = -33.497000
a_geo.localization.longitude = -70.613201
a_geo.localization.area = historia
a_geo.localization.zoom = 0
a_geo.localization.angle = 0
a_geo.localization.tilt = 0
a_geo.localization.category_list = 'area, academic_unity'
a_geo.set_banner_from_url(banner_url_for(a_geo))
a_geo.save!

a_his = AcademicUnity.where(abbreviation: 'HIS').first_or_initialize
a_his.short_name = 'Historia'
a_his.faculty = historia
a_his.url = ''
a_his.localization = Place.where(identifier: 'ACADEMICUNITY HIS').first_or_initialize
a_his.localization.identifier = ''
a_his.localization.name = ''
a_his.localization.latitude = -33.497174
a_his.localization.longitude = -70.613198
a_his.localization.area = historia
a_his.localization.zoom = 0
a_his.localization.angle = 0
a_his.localization.tilt = 0
a_his.localization.category_list = 'area, academic_unity'
a_his.set_banner_from_url(banner_url_for(a_his))
a_his.save!

a_ing = AcademicUnity.where(abbreviation: ingenieria.abbreviation).first_or_initialize
a_ing.short_name = 'Ingeniería'
a_ing.faculty = ingenieria
a_ing.url = ''
a_ing.localization = Place.where(identifier: "ACADEMICUNITY #{ingenieria.abbreviation}").first_or_initialize
a_ing.localization.identifier = ''
a_ing.localization.name = ''
a_ing.localization.latitude = ingenieria.latitude
a_ing.localization.longitude = ingenieria.longitude
a_ing.localization.area = ingenieria
a_ing.localization.zoom = 0
a_ing.localization.angle = 0
a_ing.localization.tilt = 0
a_ing.localization.category_list = 'area, academic_unity'
a_ing.set_banner_from_url(banner_url_for(a_ing))
a_ing.save!

a_let = AcademicUnity.where(abbreviation: letras.abbreviation).first_or_initialize
a_let.short_name = 'Letras'
a_let.faculty = letras
a_let.url = ''
a_let.localization = Place.where(identifier: "ACADEMICUNITY #{letras.abbreviation}").first_or_initialize
a_let.localization.identifier = ''
a_let.localization.name = ''
a_let.localization.latitude = letras.latitude
a_let.localization.longitude = letras.longitude
a_let.localization.area = letras
a_let.localization.zoom = 0
a_let.localization.angle = 0
a_let.localization.tilt = 0
a_let.localization.category_list = 'area, academic_unity'
a_let.set_banner_from_url(banner_url_for(a_let))
a_let.save!

a_mat = AcademicUnity.where(abbreviation: matematica.abbreviation).first_or_initialize
a_mat.short_name = 'Matemática'
a_mat.faculty = matematica
a_mat.url = ''
a_mat.localization = Place.where(identifier: "ACADEMICUNITY #{matematica.abbreviation}").first_or_initialize
a_mat.localization.identifier = ''
a_mat.localization.name = ''
a_mat.localization.latitude = matematica.latitude
a_mat.localization.longitude = matematica.longitude
a_mat.localization.area = matematica
a_mat.localization.zoom = 0
a_mat.localization.angle = 0
a_mat.localization.tilt = 0
a_mat.localization.category_list = 'area, academic_unity'
a_mat.set_banner_from_url(banner_url_for(a_mat))
a_mat.save!

a_med = AcademicUnity.where(abbreviation: medicina.abbreviation).first_or_initialize
a_med.short_name = 'Medicina'
a_med.faculty = medicina
a_med.url = ''
a_med.localization = Place.where(identifier: "ACADEMICUNITY #{medicina.abbreviation}").first_or_initialize
a_med.localization.identifier = ''
a_med.localization.name = ''
a_med.localization.latitude = medicina.latitude
a_med.localization.longitude = medicina.longitude
a_med.localization.area = medicina
a_med.localization.zoom = 0
a_med.localization.angle = 0
a_med.localization.tilt = 0
a_med.localization.category_list = 'area, academic_unity'
a_med.set_banner_from_url(banner_url_for(a_med))
a_med.save!

a_musica = AcademicUnity.where(abbreviation: 'MUC').first_or_initialize
a_musica.short_name = 'Música'
a_musica.faculty = artes
a_musica.url = ''
a_musica.set_banner_from_url(banner_url_for(a_musica))
a_musica.save!

a_odonto = AcademicUnity.where(abbreviation: 'ODO').first_or_initialize
a_odonto.short_name = 'Odontología'
a_odonto.faculty = medicina
a_odonto.url = ''
a_odonto.localization = Place.where(identifier: 'ACADEMICUNITY ODO').first_or_initialize
a_odonto.localization.identifier = ''
a_odonto.localization.name = ''
a_odonto.localization.latitude = -33.497556
a_odonto.localization.longitude = -70.614412
a_odonto.localization.area = sj
a_odonto.localization.zoom = 0
a_odonto.localization.angle = 0
a_odonto.localization.tilt = 0
a_odonto.localization.category_list = 'area, academic_unity'
a_odonto.set_banner_from_url(banner_url_for(a_odonto))
a_odonto.save!

a_psi = AcademicUnity.where(abbreviation: 'PSI').first_or_initialize
a_psi.short_name = 'Psicología'
a_psi.faculty = sociales
a_psi.url = ''
a_psi.localization = Place.where(identifier: 'ACADEMICUNITY PSI').first_or_initialize
a_psi.localization.identifier = ''
a_psi.localization.name = ''
a_psi.localization.latitude = sociales.latitude
a_psi.localization.longitude = sociales.longitude
a_psi.localization.area = sociales
a_psi.localization.zoom = 0
a_psi.localization.angle = 0
a_psi.localization.tilt = 0
a_psi.localization.category_list = 'area, academic_unity'
a_psi.set_banner_from_url(banner_url_for(a_psi))
a_psi.save!

a_quim = AcademicUnity.where(abbreviation: quimica.abbreviation).first_or_initialize
a_quim.short_name = 'Química'
a_quim.faculty = quimica
a_quim.url = ''
a_quim.localization = Place.where(identifier: "ACADEMICUNITY #{quimica.abbreviation}").first_or_initialize
a_quim.localization.identifier = ''
a_quim.localization.name = ''
a_quim.localization.latitude = quimica.latitude
a_quim.localization.longitude = quimica.longitude
a_quim.localization.area = quimica
a_quim.localization.zoom = 0
a_quim.localization.angle = 0
a_quim.localization.tilt = 0
a_quim.localization.category_list = 'area, academic_unity'
a_quim.set_banner_from_url(banner_url_for(a_quim))
a_quim.save!

a_socio = AcademicUnity.where(abbreviation: 'SOL').first_or_initialize
a_socio.short_name = 'Sociología'
a_socio.faculty = sociales
a_socio.url = ''
a_socio.localization = Place.where(identifier: 'ACADEMICUNITY SOL').first_or_initialize
a_socio.localization.identifier = ''
a_socio.localization.name = ''
a_socio.localization.latitude = sociales.latitude
a_socio.localization.longitude = sociales.longitude
a_socio.localization.area = sociales
a_socio.localization.zoom = 0
a_socio.localization.angle = 0
a_socio.localization.tilt = 0
a_socio.localization.category_list = 'area, academic_unity'
a_socio.set_banner_from_url(banner_url_for(a_socio))
a_socio.save!

a_act = AcademicUnity.where(abbreviation: 'ACT').first_or_initialize
a_act.short_name = 'Actuación'
a_act.faculty = artes
a_act.url = ''
a_act.set_banner_from_url(banner_url_for(a_act))
a_act.save!

a_teo = AcademicUnity.where(abbreviation: teologia.abbreviation).first_or_initialize
a_teo.short_name = 'Teología'
a_teo.faculty = teologia
a_teo.url = ''
a_teo.localization = Place.where(identifier: "ACADEMICUNITY #{teologia.abbreviation}").first_or_initialize
a_teo.localization.identifier = ''
a_teo.localization.name = ''
a_teo.localization.latitude = teologia.latitude
a_teo.localization.longitude = teologia.longitude
a_teo.localization.area = teologia
a_teo.localization.zoom = 0
a_teo.localization.angle = 0
a_teo.localization.tilt = 0
a_teo.localization.category_list = 'area, academic_unity'
a_teo.set_banner_from_url(banner_url_for(a_teo))
a_teo.save!

a_social = AcademicUnity.where(abbreviation: 'TS').first_or_initialize
a_social.short_name = 'Trabajo Social'
a_social.faculty = sociales
a_social.url = ''
a_social.localization = Place.where(identifier: 'ACADEMICUNITY TS').first_or_initialize
a_social.localization.identifier = ''
a_social.localization.name = ''
a_social.localization.latitude = sociales.latitude
a_social.localization.longitude = sociales.longitude
a_social.localization.area = sociales
a_social.localization.zoom = 0
a_social.localization.angle = 0
a_social.localization.tilt = 0
a_social.localization.category_list = 'area, academic_unity'
a_social.set_banner_from_url(banner_url_for(a_social))
a_social.save!

a_vr = AcademicUnity.where(abbreviation: villarica.abbreviation).first_or_initialize
a_vr.short_name = 'Villarrica'
a_vr.faculty = villarica
a_vr.url = ''
a_vr.localization = Place.where(identifier: "ACADEMICUNITY #{villarica.abbreviation}").first_or_initialize
a_vr.localization.identifier = ''
a_vr.localization.name = ''
a_vr.localization.latitude = villarica.latitude
a_vr.localization.longitude = villarica.longitude
a_vr.localization.area = villarica
a_vr.localization.zoom = 0
a_vr.localization.angle = 0
a_vr.localization.tilt = 0
a_vr.localization.category_list = 'area, academic_unity'
a_vr.set_banner_from_url(banner_url_for(a_vr))
a_vr.save!

puts("Created #{AcademicUnity.count} #{AcademicUnity.to_s.pluralize.downcase}")
AcademicUnity.reindex