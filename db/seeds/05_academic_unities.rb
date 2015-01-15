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

AcademicUnity.create(
	abbreviation: @agro.abbreviation,
	short_name: 'Agronomía e Ingeniería Forestal',
	faculty: @agro,
	url: '',
	localization: Place.create(
		identifier: '',
		name: '',
		latitude: @agro.latitude,
		longitude: @agro.longitude,
		area: @agro,
		zoom: 0,
		angle: 0,
		tilt: 0
	)
)

AcademicUnity.create(
	abbreviation: 'ARQ',
	short_name: 'Arquitectura',
	faculty: @fadeu,
	url: '',
	localization: Place.create(
		identifier: '',
		name: '',
		latitude: -33.419454,
		longitude: -70.618540,
		area: @fadeu,
		zoom: 0,
		angle: 0,
		tilt: 0
	)
)

AcademicUnity.create(
	abbreviation: 'ART',
	short_name: 'Arte',
	faculty: @artes,
	url: ''
)

AcademicUnity.create(
	abbreviation: 'ASTFIS',
	short_name: 'Astrofísica',
	faculty: @fisica,
	url: '',
	localization: Place.create(
		identifier: '',
		name: '',
		latitude: -33.499853,
		longitude: -70.611439,
		area: @fisica,
		zoom: 0,
		angle: 0,
		tilt: 0
	)
)

AcademicUnity.create(
	abbreviation: 'BIO',
	short_name: 'Ciencias Biológicas',
	faculty: @bio,
	url: '',
	localization: Place.create(
		identifier: '',
		name: '',
		latitude: -33.441702,
		longitude: -70.639786,
		area: @bio,
		zoom: 0,
		angle: 0,
		tilt: 0
	)
)

AcademicUnity.create(
	abbreviation: 'CS',
	short_name: 'Ciencias de la Salud',
	faculty: @bio,
	url: '',
	localization: Place.create(
		identifier: '',
		name: '',
		latitude: -33.499748,
		longitude: -70.610252,
		area: @sj,
		zoom: 0,
		angle: 0,
		tilt: 0
	)
)

AcademicUnity.create(
	abbreviation: @eco.abbreviation,
	short_name: 'Ciencias Económicas y Administrativas',
	faculty: @eco,
	url: '',
	localization: Place.create(
		identifier: '',
		name: '',
		latitude: @eco.latitude,
		longitude: @eco.longitude,
		area: @eco,
		zoom: 0,
		angle: 0,
		tilt: 0
	)
)

AcademicUnity.create(
	abbreviation: 'ICP',
	short_name: 'Ciencia Política',
	faculty: @historia,
	url: '',
	localization: Place.create(
		identifier: '',
		name: '',
		latitude: -33.497035,
		longitude: -70.613200,
		area: @historia,
		zoom: 0,
		angle: 0,
		tilt: 0
	)
)

AcademicUnity.create(
	abbreviation: @college.abbreviation,
	short_name: 'College',
	faculty: @college,
	url: '',
	localization: Place.create(
		identifier: '',
		name: '',
		latitude: @college.latitude,
		longitude: @college.longitude,
		area: @college,
		zoom: 0,
		angle: 0,
		tilt: 0
	)
)

AcademicUnity.create(
	abbreviation: @comunicaciones.abbreviation,
	short_name: 'Comunicaciones',
	faculty: @comunicaciones,
	url: '',
	localization: Place.create(
		identifier: '',
		name: '',
		latitude: @comunicaciones.latitude,
		longitude: @comunicaciones.longitude,
		area: @comunicaciones,
		zoom: 0,
		angle: 0,
		tilt: 0
	)
)

AcademicUnity.create(
	abbreviation: @construccion.abbreviation,
	short_name: 'Construcción Civil',
	faculty: @construccion,
	url: '',
	localization: Place.create(
		identifier: '',
		name: '',
		latitude: @construccion.latitude,
		longitude: @construccion.longitude,
		area: @construccion,
		zoom: 0,
		angle: 0,
		tilt: 0
	)
)

AcademicUnity.create(
	abbreviation: @derecho.abbreviation,
	short_name: 'Derecho',
	faculty: @derecho,
	url: '',
	localization: Place.create(
		identifier: '',
		name: '',
		latitude: @derecho.latitude,
		longitude: @derecho.longitude,
		area: @derecho,
		zoom: 0,
		angle: 0,
		tilt: 0
	)
)

AcademicUnity.create(
	abbreviation: 'DNO',
	short_name: 'Diseño',
	faculty: @fadeu,
	url: '',
	localization: Place.create(
		identifier: '',
		name: '',
		latitude: -33.418974,
		longitude: -70.618059,
		area: @fadeu,
		zoom: 0,
		angle: 0,
		tilt: 0
	)
)

AcademicUnity.create(
	abbreviation: @educacion.abbreviation,
	short_name: 'Educación',
	faculty: @educacion,
	url: '',
	localization: Place.create(
		identifier: '',
		name: '',
		latitude: @educacion.latitude,
		longitude: @educacion.longitude,
		area: @educacion,
		zoom: 0,
		angle: 0,
		tilt: 0
	)
)

AcademicUnity.create(
	abbreviation: @enfermeria.abbreviation,
	short_name: 'Enfermería',
	faculty: @enfermeria,
	url: '',
	localization: Place.create(
		identifier: '',
		name: '',
		latitude: @enfermeria.latitude,
		longitude: @enfermeria.longitude,
		area: @enfermeria,
		zoom: 0,
		angle: 0,
		tilt: 0
	)
)

AcademicUnity.create(
	abbreviation: 'EST',
	short_name: 'Estética',
	faculty: @artes,
	url: ''
)

AcademicUnity.create(
	abbreviation: 'IEU',
	short_name: 'Estudios Urbanos y Territoriales',
	faculty: @fadeu,
	url: '',
	localization: Place.create(
		identifier: '',
		name: '',
		latitude: -33.419214,
		longitude: -70.618350,
		area: @fadeu,
		zoom: 0,
		angle: 0,
		tilt: 0
	)
)

AcademicUnity.create(
	abbreviation: @filosofia.abbreviation,
	short_name: 'Filosofía',
	faculty: @filosofia,
	url: '',
	localization: Place.create(
		identifier: '',
		name: '',
		latitude: @filosofia.latitude,
		longitude: @filosofia.longitude,
		area: @filosofia,
		zoom: 0,
		angle: 0,
		tilt: 0
	)
)

AcademicUnity.create(
	abbreviation: @fisica.abbreviation,
	short_name: 'Física',
	faculty: @fisica,
	url: '',
	localization: Place.create(
		identifier: '',
		name: '',
		latitude: @fisica.latitude,
		longitude: @fisica.longitude,
		area: @fisica,
		zoom: 0,
		angle: 0,
		tilt: 0
	)
)

AcademicUnity.create(
	abbreviation: 'GEO',
	short_name: 'Geografía',
	faculty: @historia,
	url: '',
	localization: Place.create(
		identifier: '',
		name: '',
		latitude: -33.497000,
		longitude: -70.613201,
		area: @historia,
		zoom: 0,
		angle: 0,
		tilt: 0
	)
)

AcademicUnity.create(
	abbreviation: 'HIS',
	short_name: 'Historia',
	faculty: @historia,
	url: '',
	localization: Place.create(
		identifier: '',
		name: '',
		latitude: -33.497174,
		longitude: -70.613198,
		area: @historia,
		zoom: 0,
		angle: 0,
		tilt: 0
	)
)

AcademicUnity.create(
	abbreviation: @ingenieria.abbreviation,
	short_name: 'Ingeniería',
	faculty: @ingenieria,
	url: '',
	localization: Place.create(
		identifier: '',
		name: '',
		latitude: @ingenieria.latitude,
		longitude: @ingenieria.longitude,
		area: @ingenieria,
		zoom: 0,
		angle: 0,
		tilt: 0
	)
)

AcademicUnity.create(
	abbreviation: @letras.abbreviation,
	short_name: 'Letras',
	faculty: @letras,
	url: '',
	localization: Place.create(
		identifier: '',
		name: '',
		latitude: @letras.latitude,
		longitude: @letras.longitude,
		area: @letras,
		zoom: 0,
		angle: 0,
		tilt: 0
	)
)

AcademicUnity.create(
	abbreviation: @matematica.abbreviation,
	short_name: 'Matemática',
	faculty: @matematica,
	url: '',
	localization: Place.create(
		identifier: '',
		name: '',
		latitude: @matematica.latitude,
		longitude: @matematica.longitude,
		area: @matematica,
		zoom: 0,
		angle: 0,
		tilt: 0
	)
)

AcademicUnity.create(
	abbreviation: @medicina.abbreviation,
	short_name: 'Medicina',
	faculty: @medicina,
	url: '',
	localization: Place.create(
		identifier: '',
		name: '',
		latitude: @medicina.latitude,
		longitude: @medicina.longitude,
		area: @medicina,
		zoom: 0,
		angle: 0,
		tilt: 0
	)
)

AcademicUnity.create(
	abbreviation: 'MUC',
	short_name: 'Música',
	faculty: @artes,
	url: ''
)

AcademicUnity.create(
	abbreviation: 'ODO',
	short_name: 'Odontología',
	faculty: @medicina,
	url: '',
	localization: Place.create(
		identifier: '',
		name: '',
		latitude: -33.497556,
		longitude: -70.614412,
		area: @sj,
		zoom: 0,
		angle: 0,
		tilt: 0
	)
)

AcademicUnity.create(
	abbreviation: 'PSI',
	short_name: 'Psicología',
	faculty: @sociales,
	url: '',
	localization: Place.create(
		identifier: '',
		name: '',
		latitude: @sociales.latitude,
		longitude: @sociales.longitude,
		area: @sociales,
		zoom: 0,
		angle: 0,
		tilt: 0
	)
)

AcademicUnity.create(
	abbreviation: @quimica.abbreviation,
	short_name: 'Química',
	faculty: @quimica,
	url: '',
	localization: Place.create(
		identifier: '',
		name: '',
		latitude: @quimica.latitude,
		longitude: @quimica.longitude,
		area: @quimica,
		zoom: 0,
		angle: 0,
		tilt: 0
	)
)

AcademicUnity.create(
	abbreviation: 'SOL',
	short_name: 'Sociología',
	faculty: @sociales,
	url: '',
	localization: Place.create(
		identifier: '',
		name: '',
		latitude: @sociales.latitude,
		longitude: @sociales.longitude,
		area: @sociales,
		zoom: 0,
		angle: 0,
		tilt: 0
	)
)

AcademicUnity.create(
	abbreviation: 'ACT',
	short_name: 'Actuación',
	faculty: @artes,
	url: ''
)

AcademicUnity.create(
	abbreviation: @teologia.abbreviation,
	short_name: 'Teología',
	faculty: @teologia,
	url: '',
	localization: Place.create(
		identifier: '',
		name: '',
		latitude: @teologia.latitude,
		longitude: @teologia.longitude,
		area: @teologia,
		zoom: 0,
		angle: 0,
		tilt: 0
	)
)

AcademicUnity.create(
	abbreviation: 'TS',
	short_name: 'Trabajo Social',
	faculty: @sociales,
	url: '',
	localization: Place.create(
		identifier: '',
		name: '',
		latitude: @sociales.latitude,
		longitude: @sociales.longitude,
		area: @sociales,
		zoom: 0,
		angle: 0,
		tilt: 0
	)
)

AcademicUnity.create(
	abbreviation: @villarica.abbreviation,
	short_name: 'Villarrica',
	faculty: @villarica,
	url: '',
	localization: Place.create(
		identifier: '',
		name: '',
		latitude: @villarica.latitude,
		longitude: @villarica.longitude,
		area: @villarica,
		zoom: 0,
		angle: 0,
		tilt: 0
	)
)

AcademicUnity.all.each do |f|
    puts('Created academic unity: ' +f.	short_name)
	end	
