puts('Creating web pages')

# == Schema Information
#
# Table name: webpages
#
#  id                     :integer          not null, primary key
#  identifier             :string(255)      not null
#  name                   :string(255)      not null
#  owner                  :string(255)
#  organization_id        :integer          not null
#  page_type              :integer          default(0), not null
#  information            :text             default(""), not null
#  available              :boolean          default(TRUE), not null
#  secure_protocol        :boolean          default(FALSE), not null
#  requires_login         :boolean          default(FALSE), not null
#  should_open_in_browser :boolean          default(TRUE), not null
#  home_url               :string(255)      not null
#  base_url               :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#

Webpage.create(
      identifier: 'PORTALUC',
      name: 'miPortalUC',
      owner: 'UC',
      organization: @uc,
      page_type: 'official',
      information: '',
      available: true,
      secure_protocol: true,
      requires_login: true,
      home_url: 'https://portal.uc.cl',
      login_url: 'https://sso.uc.cl/cas/login?service=https%3A%2F%2Fportal.uc.cl%2Fc%2Fportal%2Flogin'
)

Webpage.create(
      identifier: 'WEBCURSOS',
      name: 'WEBCURSOS UC',
      owner: 'Dirección de Informática UC',
      organization: @uc,
      page_type: 'official',
      information: '',
      available: true,
      secure_protocol: true,
      requires_login: true,
      home_url: 'http://webcurso.uc.cl/portal',
      login_url: 'http://webcurso.uc.cl/portal/pda/?force.login=yes'
)

Webpage.create(
      identifier: 'SIDING',
      name: 'Siding',
      owner: 'Sistema de Información de Ingeniería',
      organization: @uc,
      page_type: 'official',
      information: '',
      available: true,
      secure_protocol: false,
      requires_login: true,
      home_url: 'http://www.ing.puc.cl/',
      login_url: 'https://intrawww.ing.puc.cl/siding/dirdes/ingcursos/cursos/vista.phtml'
)

Webpage.create(
      identifier: 'LABMAT',
      name: 'Labmat',
      owner: 'Facultad de Matemáticas UC',
      organization: @uc,
      page_type: 'official',
      information: '',
      available: true,
      secure_protocol: true,
      requires_login: true,
      home_url: 'http://www.labmat.puc.cl/',
      login_url: 'http://www.labmat.puc.cl/'
)

Webpage.create(
      identifier: 'MAIL_UC',
      name: 'Mail UC',
      owner: 'UC',
      organization: @uc,
      page_type: 'official',
      information: '',
      available: true,
      secure_protocol: true,
      requires_login: true,
      home_url: 'https://webaccess.uc.cl',
      login_url: 'https://webaccess.uc.cl'
)


Webpage.create(
      identifier: 'SIBUC',
      name: 'SIBUC',
      owner: 'Bibliotecas',
      organization: @uc,
      page_type: 'official',
      information: '',
      available: true,
      secure_protocol: true,
      requires_login: true,
      home_url: 'http://aleph.uc.cl/',
      login_url: 'http://aleph.uc.cl/'
)

Webpage.create(
      identifier: 'BUSCA_CURSOS',
      name: 'BuscaCursos UC',
      owner: 'Dirección de Informática',
      organization: @uc,
      page_type: 'official',
      information: '',
      available: true,
      secure_protocol: false,
      requires_login: false,
      home_url: 'http://www3.uc.cl/buscacursos/'
)

Webpage.create(
      identifier: 'CERTIFICADOS_ACADEMICOS',
      name: 'Certificados Académicos',
      owner: 'Formación General UC',
      organization: @uc,
      page_type: 'official',
      information: '',
      available: true,
      secure_protocol: false,
      requires_login: false,
      home_url: 'http://formaciongeneral.uc.cl/certificados-academicos'
)

Webpage.create(
      identifier: 'MALLAS',
      name: 'Mallas Curriculares',
      owner: 'Admisión y Registros Académicos',
      organization: @uc,
      page_type: 'official',
      information: '',
      available: true,
      secure_protocol: false,
      requires_login: false,
      home_url: 'http://admisionyregistros.uc.cl/alumnos/programas-estudio/carreras-y-programas2/mallas-carreras-pregrado'
)

Webpage.create(
      identifier: 'AUDIO_VISUAL',
      name: 'Centro Audiovisual',
      owner: 'Bibliotecas',
      organization: @uc,
      page_type: 'official',
      information: '',
      available: true,
      secure_protocol: false,
      requires_login: false,
      home_url: 'http://guiastematicas.bibliotecas.uc.cl/audiovisuales/'
)

Webpage.create(
       identifier: 'FEUC',
       name: 'FEUC',
       owner: 'FEUC',
       organization: @uc,
       page_type: 'political_party',
       information: 'Federación de Estudiantes de la Universidad Católica',
       available: true,
       secure_protocol: false,
       requires_login: false,
       home_url: 'http://www.feuc.cl/sitio2015/'
)


Webpage.create(
       identifier: 'PUCLITICO',
       name: 'El PUCLítico',
       owner: 'El PUCLítico',
       organization: @uc,
       page_type: 'community',
       information: '',
       available: true,
       secure_protocol: false,
       requires_login: false,
       home_url: ''
)

Webpage.create(
       identifier: 'LA_RESISTENCIA',
       name: 'La Resistencia',
       owner: 'La Resistencia',
       organization: @uc,
       page_type: 'community',
       information: '',
       available: true,
       secure_protocol: false,
       requires_login: false,
       home_url: 'https://www.facebook.com/laresistenciafanpage'
)

Webpage.create(
       identifier: 'ANIMALIA_UC',
       name: 'Animalia UC',
       owner: 'Animalia UC',
       organization: @uc,
       page_type: 'community',
       information: '',
       available: true,
       secure_protocol: false,
       requires_login: false,
       home_url: 'http://animaliauc.cl/'
)

Webpage.create(
       identifier: 'CONFESIONES_UC',
       name: 'Confesiones UCé',
       owner: 'Confesiones UCé',
       organization: @uc,
       page_type: 'community',
       information: '',
       available: true,
       secure_protocol: false,
       requires_login: false,
       home_url: 'https://www.facebook.com/confesionesuc2'
)

Webpage.create(
       identifier: 'CUMPLIDOS_UC',
       name: 'Cumplidos UC',
       owner: 'Cumplidos UC',
       organization: @uc,
       page_type: 'community',
       information: '',
       available: true,
       secure_protocol: false,
       requires_login: false,
       home_url: 'https://www.facebook.com/cumplidosUC'
)

Webpage.create(
       identifier: 'TREEP_UC',
       name: 'Treep',
       owner: 'Treep',
       organization: @uc,
       page_type: 'community',
       information: '',
       available: true,
       secure_protocol: false,
       requires_login: false,
       home_url: 'http://treep.cl/'
)


Webpage.create(
       identifier: 'NAU',
       name: 'NAU',
       owner: 'NAU',
       organization: @uc,
       page_type: 'political_party',
       information: '',
       available: true,
       secure_protocol: false,
       requires_login: false,
       home_url: 'http://www.nau.cl/'
)

Webpage.create(
       identifier: 'SOLIDARIDAD',
       name: 'Solidaridad',
       owner: 'Solidaridad',
       organization: @uc,
       page_type: 'political_party',
       information: '',
       available: true,
       secure_protocol: false,
       requires_login: false,
       home_url: 'http://www.solidaridad.cl/'
)

Webpage.create(
       identifier: 'MG',
       name: 'MG',
       owner: 'MG',
       organization: @uc,
       page_type: 'political_party',
       information: '',
       available: true,
       secure_protocol: false,
       requires_login: false,
       home_url: 'http://www.mguc.cl/'
)

Webpage.create(
       identifier: 'CRECER',
       name: 'Crecer',
       owner: 'Crecer',
       organization: @uc,
       page_type: 'political_party',
       information: '',
       available: true,
       secure_protocol: false,
       requires_login: false,
       home_url: 'https://www.facebook.com/crecer.uc'
)



