puts('Creating buildings')

# == Schema Information
#
# Table name: buildings
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
#  twitter      :string(255)
#  information  :text             default("")
#  place_id     :integer
#  created_at   :datetime
#  updated_at   :datetime
#

@cdi = Building.where(abbreviation: 'CDI').first_or_initialize
@cdi.name = 'Centro de Innovación UC - Anacleto Angelini'
@cdi.short_name = 'Centro de Innovación'
@cdi.campus = @sj
@cdi.address = 'Av. Vicuña Mackenna 4860, Macul, Santiago, Chile'
@cdi.url = 'http://centrodeinnovacion.uc.cl/'
@cdi.facebook = 'https://www.facebook.com/pages/Centro-de-Innovación-UC/673851555989524'
@cdi.twitter = 'https://twitter.com/CentroinnovaUC'
@cdi.phone = '(56 2) 2354 2280'
@cdi.email = 'centrodeinnovacion@uc.cl'
@cdi.information = 'El Centro de Innovación UC Anacleto Angelini es un espacio concebido para promover una ecología pro innovación y emprendimiento, abierto a todas las facultades de nuestra universidad.  Concebido como un centro multidisciplinario y generalista, acoge en su interior tanto proyectos de innovación como iniciativas de emprendimiento, de alto impacto económico, social y cultural. El Centro aspira a hacer una contribución muy significativa en nuestra sociedad, ayudando a articular una fructífera interacción entre educación superior, sector privado y sector público.'
@cdi.localization = Place.where(identifier: 'BUILDING CDI').first_or_initialize
@cdi.localization.name = "Centro de Innovación"
@cdi.localization.latitude = -33.497902
@cdi.localization.longitude = -70.615236
@cdi.localization.area = @sj
@cdi.localization.zoom = 0
@cdi.localization.angle = 0
@cdi.localization.tilt = 0
@cdi.localization.category_list = 'area, building'
@cdi.save!


@hallsj = Building.where(abbreviation: 'HALL SJ').first_or_initialize
@hallsj.name = 'Hall Universitario - San Joaquín'
@hallsj.short_name = 'Hall Universitario'
@hallsj.campus = @sj
@hallsj.address = ''
@hallsj.url = ''
@hallsj.facebook = ''
@hallsj.twitter = ''
@hallsj.phone = ''
@hallsj.email = ''
@hallsj.information = ''
@hallsj.localization = Place.where(identifier: 'BUILDING HALL SJ').first_or_initialize
@hallsj.localization.name = "Hall SJ"
@hallsj.localization.latitude = -33.498028
@hallsj.localization.longitude = -70.613246
@hallsj.localization.area = @sj
@hallsj.localization.zoom = 0
@hallsj.localization.angle = 0
@hallsj.localization.tilt = 0
@hallsj.localization.category_list = 'area, building'
@hallsj.save!


@al = Building.where(abbreviation: 'AL').first_or_initialize
@al.name = 'Aula Magna'
@al.short_name = 'Aula Magna'
@al.campus = @sj
@al.address = ''
@al.url = ''
@al.facebook = ''
@al.twitter = ''
@al.phone = ''
@al.email = ''
@al.information = ''
@al.localization = Place.where(identifier: 'BUILDING AL').first_or_initialize
@al.localization.name = "Aula Magna"
@al.localization.latitude = -33.497842
@al.localization.longitude = -70.608997
@al.localization.area = @sj
@al.localization.zoom = 0
@al.localization.angle = 0
@al.localization.tilt = 0
@al.localization.category_list = 'area, building'
@al.save!


@templo = Building.where(abbreviation: 'TEMPLO').first_or_initialize
@templo.name = 'Templo'
@templo.short_name = 'Templo'
@templo.campus = @sj
@templo.address = ''
@templo.url = ''
@templo.facebook = ''
@templo.twitter = ''
@templo.phone = ''
@templo.email = ''
@templo.information = ''
@templo.localization = Place.where(identifier: 'BUILDING TEMPLO').first_or_initialize
@templo.localization.name = "Aula Magna"
@templo.localization.latitude = -33.497835
@templo.localization.longitude = -70.609015
@templo.localization.area = @sj
@templo.localization.zoom = 0
@templo.localization.angle = 0
@templo.localization.tilt = 0
@templo.localization.category_list = 'area, building'
@templo.save!


puts("Created #{Building.count} #{Building.to_s.pluralize.downcase}")
