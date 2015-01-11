puts('Creating web pages')

# Table name: schedule_modules
#
# Webpage.create(
#        identifier: '',
#        name: '',
#        owner: '',
#        organization: @uc,
#        page_type: 'official',
#        information: '',
#        available: true,
#        secure_protocol: true,
#        requires_login: true,
#        home_url: '',
#        base_url: ''
# )

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
      base_url: 'https://portal.uc.cl'
)

Webpage.create(
      identifier: 'WEBCURSO',
      name: 'WEBCURSOS UC',
      owner: 'Dirección de Informática UC',
      organization: @uc,
      page_type: 'official',
      information: '',
      available: true,
      secure_protocol: true,
      requires_login: true,
      home_url: 'http://webcurso.uc.cl/portal',
      base_url: 'http://webcurso.uc.cl/portal'
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
      base_url: 'http://www.ing.puc.cl/'
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
      base_url: 'http://www.labmat.puc.cl/'
)
