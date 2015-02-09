puts('Creating organizations')

# == Schema Information
#
# Table name: organizations
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  short_name   :string(255)
#  abbreviation :string(255)      not null
#  information  :text             default("")
#  image        :string(255)
#  url          :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#  facebook     :string(255)
#  twitter      :string(255)
#  place_id     :integer
#  address      :string(255)
#  phone        :string(255)
#

@uc = Organization.create(
    abbreviation: 'UC',
    name: 'Pontificia Universidad Católica de Chile',
    short_name: 'Universidad Católica',
    url: 'http://www.uc.cl',
    facebook: 'https://www.facebook.com/ucatolica',
    twitter: 'https://twitter.com/ucatolica',
    information: 'La Pontificia Universidad Católica de Chile fue fundada el 21 de junio de 1888 por iniciativa del Arzobispo de Santiago, Monseñor Mariano Casanova, con el objetivo de ser una institución que integrara la excelencia académica y una formación inspirada en la doctrina cristiana. Su creación se inserta en las circunstancias históricas universales y locales que afectaron a la Iglesia Católica, instándola a formar profesionales poseedores de un auténtico sentido cristiano de la vida, que sirviera como fermento renovador para las nuevas generaciones.'
)

Organization.all.each do |o|
    puts('Created organization: ' +o.name)
end
