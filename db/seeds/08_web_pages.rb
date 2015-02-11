puts('Creating web pages')

web = Webpage.where(identifier: 'PORTALUC').first_or_initialize
web.name = 'miPortalUC'
web.owner = 'UC'
web.organization = @uc
web.page_type = 'official'
web.information = ''
web.available = true
web.secure_protocol = true
web.requires_login = true
web.home_url = 'https://portal.uc.cl'
web.login_url = 'https://portal.uc.cl/web/home-community/inicio'
web.save!

web = Webpage.where(identifier: 'WEBCURSOS').first_or_initialize
web.name = 'WEBCURSOS UC'
web.owner = 'Dirección de Informática UC'
web.organization = @uc
web.page_type = 'official'
web.information = ''
web.available = true
web.secure_protocol = true
web.requires_login = true
web.home_url = 'http://webcurso.uc.cl/portal'
web.login_url = 'http://webcurso.uc.cl/portal/pda/?force.login=yes'
web.save!

web = Webpage.where(identifier: 'SIDING').first_or_initialize
web.name = 'Siding'
web.owner = 'Sistema de Información de Ingeniería'
web.organization = @uc
web.page_type = 'official'
web.information = ''
web.available = true
web.secure_protocol = false
web.requires_login = true
web.home_url = 'http://www.ing.puc.cl/'
web.login_url = 'https://intrawww.ing.puc.cl/siding/dirdes/ingcursos/cursos/index.phtml'
web.save!

web = Webpage.where(identifier: 'LABMAT').first_or_initialize
web.name = 'Labmat'
web.owner = 'Facultad de Matemáticas UC'
web.organization = @uc
web.page_type = 'official'
web.information = ''
web.available = true
web.secure_protocol = true
web.requires_login = true
web.home_url = 'http://www.labmat.puc.cl/'
web.login_url = 'http://www.labmat.puc.cl/'

web.save!

web = Webpage.where(identifier: 'SIBUC').first_or_initialize
web.name = 'SIBUC'
web.owner = 'Bibliotecas'
web.organization = @uc
web.page_type = 'official'
web.information = ''
web.available = true
web.secure_protocol = true
web.requires_login = true
web.home_url = 'http://aleph.uc.cl/'
web.login_url = 'http://aleph.uc.cl/'
web.save!

web = Webpage.where(identifier: 'BUSCA_CURSOS').first_or_initialize
web.name = 'BuscaCursos UC'
web.owner = 'Dirección de Informática'
web.organization = @uc
web.page_type = 'official'
web.information = ''
web.available = true
web.secure_protocol = false
web.requires_login = false
web.home_url = 'http://www3.uc.cl/buscacursos/'
web.save!

web = Webpage.where(identifier: 'CERTIFICADOS_ACADEMICOS').first_or_initialize
web.name = 'Certificados Académicos'
web.owner = 'Formación General UC'
web.organization = @uc
web.page_type = 'official'
web.information = ''
web.available = true
web.secure_protocol = false
web.requires_login = false
web.home_url = 'http://formaciongeneral.uc.cl/certificados-academicos'
web.save!

web = Webpage.where(identifier: 'MALLAS').first_or_initialize
web.name = 'Mallas Curriculares'
web.owner = 'Admisión y Registros Académicos'
web.organization = @uc
web.page_type = 'official'
web.information = ''
web.available = true
web.secure_protocol = false
web.requires_login = false
web.home_url = 'http://admisionyregistros.uc.cl/alumnos/programas-estudio/carreras-y-programas2/mallas-carreras-pregrado'
web.save!

web = Webpage.where(identifier: 'AUDIO_VISUAL').first_or_initialize
web.name = 'Centro Audiovisual'
web.owner = 'Bibliotecas'
web.organization = @uc
web.page_type = 'official'
web.information = ''
web.available = true
web.secure_protocol = false
web.requires_login = false
web.home_url = 'http://guiastematicas.bibliotecas.uc.cl/audiovisuales/'
web.save!

web = Webpage.where(identifier: 'FEUC').first_or_initialize
web.name = 'FEUC'
web.owner = 'FEUC'
web.organization = @uc
web.page_type = 'political_party'
web.information = 'Federación de Estudiantes de la Universidad Católica'
web.available = true
web.secure_protocol = false
web.requires_login = false
web.home_url = 'http://www.feuc.cl/sitio2015/'

web.save!

web = Webpage.where(identifier: 'PUCLITICO').first_or_initialize
web.name = 'El PUCLítico'
web.owner = 'El PUCLítico'
web.organization = @uc
web.page_type = 'community'
web.information = ''
web.available = true
web.secure_protocol = false
web.requires_login = false
web.home_url = 'http://www.elpuclitico.cl/'
web.save!

web = Webpage.where(identifier: 'LA_RESISTENCIA').first_or_initialize
web.name = 'La Resistencia'
web.owner = 'La Resistencia'
web.organization = @uc
web.page_type = 'community'
web.information = ''
web.available = true
web.secure_protocol = false
web.requires_login = false
web.home_url = 'https://www.facebook.com/laresistenciafanpage'
web.save!

web = Webpage.where(identifier: 'ANIMALIA_UC').first_or_initialize
web.name = 'Animalia UC'
web.owner = 'Animalia UC'
web.organization = @uc
web.page_type = 'community'
web.information = ''
web.available = true
web.secure_protocol = false
web.requires_login = false
web.home_url = 'http://animaliauc.cl/'
web.save!

web = Webpage.where(identifier: 'CONFESIONES_UC').first_or_initialize
web.name = 'Confesiones UCé'
web.owner = 'Confesiones UCé'
web.organization = @uc
web.page_type = 'community'
web.information = ''
web.available = true
web.secure_protocol = false
web.requires_login = false
web.home_url = 'https://www.facebook.com/confesionesuc2'
web.save!

web = Webpage.where(identifier: 'CUMPLIDOS_UC').first_or_initialize
web.name = 'Cumplidos UC'
web.owner = 'Cumplidos UC'
web.organization = @uc
web.page_type = 'community'
web.information = ''
web.available = true
web.secure_protocol = false
web.requires_login = false
web.home_url = 'https://www.facebook.com/cumplidosUC'
web.save!

web = Webpage.where(identifier: 'TREEP_UC').first_or_initialize
web.name = 'Treep'
web.owner = 'Treep'
web.organization = @uc
web.page_type = 'community'
web.information = ''
web.available = true
web.secure_protocol = false
web.requires_login = false
web.home_url = 'http://treep.cl/'

web.save!

web = Webpage.where(identifier: 'NAU').first_or_initialize
web.name = 'NAU'
web.owner = 'NAU'
web.organization = @uc
web.page_type = 'political_party'
web.information = ''
web.available = true
web.secure_protocol = false
web.requires_login = false
web.home_url = 'http://www.nau.cl/'
web.save!

web = Webpage.where(identifier: 'SOLIDARIDAD').first_or_initialize
web.name = 'Solidaridad'
web.owner = 'Solidaridad'
web.organization = @uc
web.page_type = 'political_party'
web.information = ''
web.available = true
web.secure_protocol = false
web.requires_login = false
web.home_url = 'http://www.solidaridad.cl/'
web.save!

web = Webpage.where(identifier: 'MG').first_or_initialize
web.name = 'MG'
web.owner = 'MG'
web.organization = @uc
web.page_type = 'political_party'
web.information = ''
web.available = true
web.secure_protocol = false
web.requires_login = false
web.home_url = 'http://www.mguc.cl/'
web.save!

web = Webpage.where(identifier: 'CRECER').first_or_initialize
web.name = 'Crecer'
web.owner = 'Crecer'
web.organization = @uc
web.page_type = 'political_party'
web.information = ''
web.available = true
web.secure_protocol = false
web.requires_login = false
web.home_url = 'https://www.facebook.com/crecer.uc'
web.save!
