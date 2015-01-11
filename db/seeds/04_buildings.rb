puts('Creating buildings')

@cdi = Building.create(
    abbreviation: 'CDI',
    name: 'Centro de Innovación UC - Anacleto Angelini',
    short_name: 'Centro de Innovación',
    campus_id: @sj.id,
    address: 'Av. Vicuña Mackenna 4860, Macul, Santiago, Chile',
    url: 'http://centrodeinnovacion.uc.cl/',
    facebook: 'https://www.facebook.com/pages/Centro-de-Innovación-UC/673851555989524',
    twitter: 'https://twitter.com/CentroinnovaUC',
    phone: '(56 2) 2354 2280',
    email: 'centrodeinnovacion@uc.cl',
    information: 'El Centro de Innovación UC Anacleto Angelini es un espacio concebido para promover una ecología pro innovación y emprendimiento, abierto a todas las facultades de nuestra universidad.  Concebido como un centro multidisciplinario y generalista, acoge en su interior tanto proyectos de innovación como iniciativas de emprendimiento, de alto impacto económico, social y cultural.
El Centro aspira a hacer una contribución muy significativa en nuestra sociedad, ayudando a articular una fructífera interacción entre educación superior, sector privado y sector público.',
    localization: Place.create(
        identifier: 'CDI',
        name: "Centro de Innovación",
        latitude: -33.497902,
        longitude: -70.615236,
        area: @sj,
        zoom: 0,
        angle: 0,
        tilt: 0
    )
)

@hallsj = Building.create(
    abbreviation: 'Hall SJ',
    name: 'Hall Universitario - San Joaquín',
    short_name: 'Hall Universitario',
    campus_id: @sj.id,
    address: '',
    url: '',
    facebook: '',
    twitter: '',
    phone: '',
    email: '',
    information: '',
    localization: Place.create(
        identifier: 'HALL SJ',
        name: "Hall SJ",
        latitude: -33.498028,
        longitude: -70.613246,
        area: @sj,
        zoom: 0,
        angle: 0,
        tilt: 0
    )
)

@al = Building.create(
    abbreviation: 'AL',
    name: 'Aula Magna',
    short_name: 'Aula Magna',
    campus_id: @sj.id,
    address: '',
    url: '',
    facebook: '',
    twitter: '',
    phone: '',
    email: '',
    information: '',
    localization: Place.create(
        identifier: 'Aula Magna',
        name: "Aula Magna",
        latitude: -33.497842,
        longitude: -70.608997,
        area: @sj,
        zoom: 0,
        angle: 0,
        tilt: 0
    )
)

@templo = Building.create(
    abbreviation: 'Templo',
    name: 'Templo',
    short_name: 'Templo',
    campus_id: @sj.id,
    address: '',
    url: '',
    facebook: '',
    twitter: '',
    phone: '',
    email: '',
    information: '',
    localization: Place.create(
        identifier: 'Aula Magna',
        name: "Aula Magna",
        latitude: -33.497835,
        longitude: -70.609015,
        area: @sj,
        zoom: 0,
        angle: 0,
        tilt: 0
    )
)

Building.all.each do |b|
  puts('Created building: ' +b.name)
end
