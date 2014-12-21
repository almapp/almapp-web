puts('Creating Academic Unities')

# == Schema Information
#
# Table name: academic_unities
#
#  id          :integer          not null, primary key
#  short_name  :string           not null
#  name        :string
#  faculty_id  :integer
#  slug        :string           not null
#  url         :string
#  email       :string
#  address     :string
#  information :text
#  facebook    :string
#  twitter     :string
#  place_id    :integer
#  created_at  :datetime
#  updated_at  :datetime

AcademicUnity.create(
short_name: 'Agronomía e Ingeniería Forestal',
faculty: @agro,
url: ''
)

AcademicUnity.create(
short_name: 'Arquitectura',
faculty: @fadeu,
url: ''
)

AcademicUnity.create(
short_name: 'Arte',
faculty: @artes,
url: ''
)

AcademicUnity.create(
short_name: 'Astrofísica',
faculty: @fisica,
url: ''
)

AcademicUnity.create(
short_name: 'Ciencias Biológicas',
faculty: @bio,
url: ''
)

AcademicUnity.create(
short_name: 'Ciencias de la Salud',
faculty: @bio,
url: ''
)

AcademicUnity.create(
short_name: 'Ciencias Económicas y Administrativas',
faculty: @eco,
url: ''
)

AcademicUnity.create(
short_name: 'Ciencia Política',
faculty: @historia,
url: ''
)

AcademicUnity.create(
short_name: 'College',
faculty: @college,
url: ''
)

AcademicUnity.create(
short_name: 'Comunicaciones',
faculty: @comunicaciones,
url: ''
)

AcademicUnity.create(
short_name: 'Construcción Civil',
faculty: @construccion,
url: ''
)

AcademicUnity.create(
short_name: 'Derecho',
faculty: @derecho,
url: ''
)

AcademicUnity.create(
short_name: 'Diseño',
faculty: @fadeu,
url: ''
)

AcademicUnity.create(
short_name: 'Educación',
faculty: @educacion,
url: ''
)

AcademicUnity.create(
short_name: 'Enfermería',
faculty: @enfermeria,
url: ''
)

AcademicUnity.create(
short_name: 'Estética',
faculty: @artes,
url: ''
)

AcademicUnity.create(
short_name: 'Estudios Urbanos y Territoriales',
faculty: @fadeu,
url: ''
)

AcademicUnity.create(
short_name: 'Filosofía',
faculty: @filosofia,
url: ''
)

AcademicUnity.create(
short_name: 'Física',
faculty: @fisica,
url: ''
)

AcademicUnity.create(
short_name: 'Geografía',
faculty: @historia,
url: ''
)

AcademicUnity.create(
short_name: 'Historia',
faculty: @historia,
url: ''
)

AcademicUnity.create(
short_name: 'Ingeniería',
faculty: @ingenieria,
url: ''
)

AcademicUnity.create(
short_name: 'Letras',
faculty: @letras,
url: ''
)

AcademicUnity.create(
short_name: 'Matemática',
faculty: @matematica,
url: ''
)

AcademicUnity.create(
short_name: 'Medicina',
faculty: @medicina,
url: ''
)

AcademicUnity.create(
short_name: 'Música',
faculty: @artes,
url: ''
)

AcademicUnity.create(
short_name: 'Odontología',
faculty: @medicina,
url: ''
)

AcademicUnity.create(
short_name: 'Psicología',
faculty: @sociales,
url: ''
)

AcademicUnity.create(
short_name: 'Química',
faculty: @quimica,
url: ''
)

AcademicUnity.create(
short_name: 'Sociología',
faculty: @sociales,
url: ''
)

AcademicUnity.create(
short_name: 'Teatro',
faculty: @artes,
url: ''
)

AcademicUnity.create(
short_name: 'Teología',
faculty: @teologia,
url: ''
)

AcademicUnity.create(
short_name: 'Trabajo Social',
faculty: @sociales,
url: ''
)

AcademicUnity.create(
short_name: 'Villarrica',
faculty: @villarica,
url: ''
)

AcademicUnity.all.each do |f|
    puts('Created academic unity: ' +f.short_name)
end
