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

@agro = Faculty.create(
    abbreviation: 'AGC',
    name: 'Facultad de Agronomía e Ingeniería Forestal',
    short_name: 'Agronomía e Ingeniería Forestal',
    campus: @sj,
    address: '',
    url: 'http://agronomia.uc.cl/',
    facebook: 'https://www.facebook.com/faifuc',
    twitter: 'https://twitter.com/AgroyForestalUC',
    phone: '(56 2) 2354 4895',
    email: 'agroforestal@uc.cl',
    information: nil,
    localization: Place.create(
        latitude: -33.496591,
        longitude: -70.609579,
        area: @sj,
        zoom: 0,
        angle: 0,
        tilt: 0
    )
)

@fadeu = Faculty.create(
    abbreviation: 'FADEU',
    name: 'Facultad de Arquitectura, Diseño y Estudios Urbanos',
    short_name: 'Arquitectura, Diseño y Estudios Urbanos',
    campus: @lc,
    address: '',
    url: 'http://fadeu.puc.cl/',
    facebook: 'https://www.facebook.com/fadeuuc',
    twitter: 'https://twitter.com/FADEU_UC',
    phone: '(56) (2) 2354 7750',
    email: 'fadeu@uc.cl',
    information: 'Facultad de Arquitectura, Diseño y Estudios Urbanos de la Pontificia Universidad Católica de Chile.\nLa facultad está compuesta por 3 unidades: la Escuela de Arquitectura, la Escuela de Diseño y el Instituto de Estudios Urbanos.',
    localization: Place.create(
        latitude: -33.419495,
        longitude: -70.618351,
        area: @lc,
        zoom: 0,
        angle: 0,
        tilt: 0
    )
)

@artes = Faculty.create(
    abbreviation: 'ART',
    name: 'Facultad de Artes',
    short_name: 'Artes',
    campus: @co,
    address: 'Avda. Jaime Guzmán Errázuriz 3300, Providencia, Santiago, Chile.',
    url: 'http://artes.uc.cl/',
    facebook: 'https://www.facebook.com/ExtensionFacultadArtesUC',
    twitter: 'https://twitter.com/@facartesuc',
    phone: '+562 2354 2000',
    email: 'mjleon@uc.cl',
    information: 'Somos una red dedicada a generar espacios diálogo y comunicar las actividades de los estudiantes, egresados y profesores de la Facultad de Artes UC y de otros núcleos de desarrollo artístico en Chile. Escríbenos a mjleon@uc.cl',
    localization: Place.create(
        latitude: -33.446092,
        longitude: -70.593395,
        area: @co,
        zoom: 0,
        angle: 0,
        tilt: 0
    )
)

@bio = Faculty.create(
    abbreviation: 'BIO',
    name: 'Facultad de Ciencias Biológicas',
    short_name: 'Ciencias Biológicas',
    campus: @cc,
    address: '',
    url: 'http://biologia.uc.cl/es/',
    facebook: nil,
    twitter: nil,
    phone: nil,
    email: 'decanato@bio.puc.cl',
    information: nil,
    localization: Place.create(
        latitude: -33.441677,
        longitude:  -70.639494,
        area: @cc,
        zoom: 0,
        angle: 0,
        tilt: 0
    )
)

@eco = Faculty.create(
    abbreviation: 'EA',
    name: 'Facultad de Ciencias Económicas y Administrativas',
    short_name: 'Ciencias Económicas y Administrativas',
    campus: @sj,
    address: '',
    url: 'http://economiayadministracion.uc.cl/',
    facebook: nil,
    twitter: nil,
    phone: nil,
    email: nil,
    information: nil,
    localization: Place.create(
        latitude: -33.497020,
        longitude: -70.611462,
        area: @sj,
        zoom: 0,
        angle: 0,
        tilt: 0
    )
)

@sociales = Faculty.create(
    abbreviation: 'SOC',
    name: 'Facultad de Ciencias Sociales',
    short_name: 'Ciencias Sociales',
    campus: @sj,
    address: '',
    url: nil,
    facebook: nil,
    twitter: nil,
    phone: nil,
    email: nil,
    information: nil,
    localization: Place.create(
        latitude: -33.498357,
        longitude: -70.610006,
        area: @sj,
        zoom: 0,
        angle: 0,
        tilt: 0
    )
)

@comunicaciones = Faculty.create(
    abbreviation: 'COM',
    name: 'Facultad de Comunicaciones',
    short_name: 'Comunicaciones',
    campus: @cc,
    address: '',
    url: 'http://comunicaciones.uc.cl/',
    facebook: 'https://www.facebook.com/fcomuc',
    twitter: 'https://twitter.com/fcomuc',
    phone: '(56-2) 23542020',
    email: 'fcomunicaciones@uc.cl',
    information: nil,
    localization: Place.create(
        latitude: -33.441442,
        longitude: -70.640749,
        area: @cc,
        zoom: 0,
        angle: 0,
        tilt: 0
    )
)

@letras = Faculty.create(
    abbreviation: 'LET',
    name: 'Facultad de Letras',
    short_name: 'Letras',
    campus: @sj,
    address: '',
    url: 'http://www7.uc.cl/letras/',
    facebook: 'https://www.facebook.com/letrasuc',
    twitter: nil,
    phone: '223542000',
    email: nil,
    information: nil,
    localization: Place.create(
        latitude: -33.496700,
        longitude: -70.613790,
        area: @sj,
        zoom: 0,
        angle: 0,
        tilt: 0
    )
)

@derecho = Faculty.create(
    abbreviation: 'DE',
    name: 'Facultad de Derecho',
    short_name: 'Derecho',
    campus: @cc,
    address: '',
    url: 'http://derecho.uc.cl/',
    facebook: 'https://www.facebook.com/derechouc',
    twitter: 'https://twitter.com/derechouc',
    phone: '(56) (2) 2 354 2000',
    email: 'comunicacionesderechouc@uc.cl',
    information: nil,
    localization: Place.create(
        latitude: -33.441022,
        longitude: -70.640158,
        area: @cc,
        zoom: 0,
        angle: 0,
        tilt: 0
    )
)

@educacion = Faculty.create(
    abbreviation: 'EDU',
    name: 'Facultad de Educación',
    short_name: 'Educación',
    campus: @sj,
    address: '',
    url: 'http://educacion.uc.cl/',
    facebook: nil,
    twitter: nil,
    phone: '+56 (2) 22354 5350',
    email: 'educacionuc@uc.cl',
    information: nil,
    localization: Place.create(
        latitude: -33.498128,
        longitude: -70.614241,
        area: @sj,
        zoom: 0,
        angle: 0,
        tilt: 0
    )
)

@filosofia = Faculty.create(
    abbreviation: 'FIL',
    name: 'Facultad de Filosofía',
    short_name: 'Filosofía',
    campus: @sj,
    address: '',
    url: nil,
    facebook: nil,
    twitter: nil,
    phone: nil,
    email: nil,
    information: nil,
    localization: Place.create(
        latitude: -33.497217,
        longitude: -70.613997,
        area: @sj,
        zoom: 0,
        angle: 0,
        tilt: 0
    )
)

@fisica = Faculty.create(
    abbreviation: 'FIS',
    name: 'Facultad de Física',
    short_name: 'Física',
    campus: @sj,
    address: '',
    url: 'http://fisica.uc.cl/',
    facebook: nil,
    twitter: nil,
    phone: '(56) (2) 354 4470',
    email: nil,
    information: nil,
    localization: Place.create(
        latitude: -33.499441,
        longitude: -70.611044,
        area: @sj,
        zoom: 0,
        angle: 0,
        tilt: 0
    )
)

@historia = Faculty.create(
    abbreviation: 'HIS',
    name: 'Facultad de Historia, Geografía y Ciencia Política',
    short_name: 'Historia, Geografía y Ciencia Política',
    campus: @sj,
    address: '',
    url: 'http://www7.uc.cl/historiageografiaycienciapolitica/',
    facebook: nil,
    twitter: nil,
    phone: '3547808',
    email: nil,
    information: nil,
    localization: Place.create(
        latitude: -33.497075,
        longitude: -70.613188,
        area: @sj,
        zoom: 0,
        angle: 0,
        tilt: 0
    )
)

@construccion = Faculty.create(
    abbreviation: 'CCL',
    name: 'Escuela de Construcción Civil',
    short_name: 'Construcción Civil',
    campus: @sj,
    address: '',
    url: 'http://www7.uc.cl/construc_civil',
    facebook: nil,
    twitter: nil,
    phone: '6864565',
    email: 'webeccuc@uc.cl',
    information: nil,
    localization: Place.create(
        latitude: -33.498969,
        longitude: -70.613837,
        area: @sj,
        zoom: 0,
        angle: 0,
        tilt: 0
    )
)

@ingenieria = Faculty.create(
    abbreviation: 'ING',
    name: 'Escuela de Ingeniería',
    short_name: 'Ingeniería',
    campus: @sj,
    address: '',
    url: 'http://www.ing.puc.cl/',
    facebook: 'https://www.facebook.com/EscueladeIngenieriaUniversidadCatolica',
    twitter: 'https://twitter.com/ingenieriaUC',
    phone: '+56 2 354 11 93',
    email: 'comunicaciones@ing.puc.cl',
    information: nil,
    localization: Place.create(
        latitude: -33.500000,
        longitude: -70.612870,
        area: @sj,
        zoom: 0,
        angle: 0,
        tilt: 0
    )
)

@matematica = Faculty.create(
    abbreviation: 'MAT',
    name: 'Facultad de Matemática',
    short_name: 'Matemática',
    campus: @sj,
    address: 'Edificio Rolando Chuaqui. Facultad de Matemáticas. Avda. Vicuña Mackenna #4860. Macul, Santiago. Chile.',
    url: 'http://www.mat.uc.cl/',
    facebook: nil,
    twitter: nil,
    phone: '(56 2) 354 4511',
    email: nil,
    information: nil,
    localization: Place.create(
        latitude: -33.499796,
        longitude: -70.610610,
        area: @sj,
        zoom: 0,
        angle: 0,
        tilt: 0
    )
)

@enfermeria = Faculty.create(
    abbreviation: 'ENF',
    name: 'Escuela de Enfermería',
    short_name: 'Enfermería',
    campus: @sj,
    address: '',
    url: nil,
    facebook: 'https://www.facebook.com/escueladeenfermeria.uc',
    twitter: 'https://twitter.com/Enfermeria_UC',
    phone: '(56-2) 2354 5831',
    email: 'escueladeenfermeria@uc.cl',
    information: nil,
    localization: Place.create(
        latitude: -33.498938,
        longitude: -70.613059,
        area: @sj,
        zoom: 0,
        angle: 0,
        tilt: 0
    )
)

@medicina = Faculty.create(
    abbreviation: 'MED',
    name: 'Escuela de Medicina',
    short_name: 'Medicina',
    campus: @cc,
    address: 'Alameda Libertador Bernardo O´Higgins 340, 8331150 Santiago de Chile',
    url: 'http://medicina.uc.cl/',
    facebook: 'https://www.facebook.com/escuelamedicinauc',
    twitter: nil,
    phone: '(56) (2) 354 2000',
    email: 'escuelamedicina@uc.cl',
    information: nil,
    localization: Place.create(
        latitude: -33.441458,
        longitude: -70.640379,
        area: @cc,
        zoom: 0,
        angle: 0,
        tilt: 0
    )
)

@quimica = Faculty.create(
    abbreviation: 'QIM',
    name: 'Facultad de Química',
    short_name: 'Química',
    campus: @sj,
    address: '',
    url: 'http://www.quimica.uc.cl/',
    facebook: nil,
    twitter: nil,
    phone: '(56) (2) 2354 2000',
    email: nil,
    information: nil,
    localization: Place.create(
        identifier: "",
        name: "",
        latitude: -33.499016,
        longitude: -70.611008,
        area: @sj,
        zoom: 0,
        angle: 0,
        tilt: 0
    )
)

@teologia = Faculty.create(
    abbreviation: 'TTF',
    name: 'Facultad de Teología',
    short_name: 'Teología',
    campus: @sj,
    address: '',
    url: 'http://teologia.uc.cl/',
    facebook: nil,
    twitter: nil,
    phone: '(56) (2) 2354 1634',
    email: nil,
    information: nil,
    localization: Place.create(
        identifier: "",
        name: "",
        latitude: -33.497833,
        longitude: -70.610808,
        area: @sj,
        zoom: 0,
        angle: 0,
        tilt: 0
    )
)

@villarica = Faculty.create(
    abbreviation: 'VR',
    name: 'Campus Villarrica',
    short_name: 'Villarrica',
    campus: @vr,
    address: 'Pontificia Universidad Católica de Chile - Bernardo OHiggins 501 - Villarrica - Chile',
    url: 'http://villarrica.uc.cl/',
    facebook: nil,
    twitter: 'https://twitter.com/villarricauc',
    phone: '(45) 2411830',
    email: nil,
    information: nil,
    localization: Place.create(
    identifier: "",
    name: "",
        latitude: 0.0,
        longitude: 0.0,
        area: @vr,
        zoom: 0,
        angle: 0,
        tilt: 0
    )
)

@college = Faculty.create(
    abbreviation: 'D',
    name: 'College',
    short_name: 'College',
    campus: @sj,
    address: '',
    url: 'http://college.uc.cl/',
    facebook: nil,
    twitter: nil,
    phone: '(56) (2) 2354 5774',
    email: 'contactocollege@uc.cl',
    information: nil,
    localization: Place.create(
        identifier: "",
        name: "",
        latitude: -33.500481,
        longitude: -70.610954,
        area: @sj,
        zoom: 0,
        angle: 0,
        tilt: 0
    )
)

Faculty.all.each do |f|
  puts('Created faculty: ' +f.name)
end

Faculty.reindex