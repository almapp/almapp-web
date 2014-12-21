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
#  zoom        :float            default("0.0")
#  angle       :float            default("0.0")
#  tilt        :float            default("0.0")
#  latitude    :float            default("0.0")
#  longitude   :float            default("0.0")
#  floor       :string
#  created_at  :datetime
#  updated_at  :datetime
#

class AcademicUnity < ActiveRecord::Base
  include Commentable
  include Posteable
  include PostPublisher
  include Zoneable
  include Likeable
  include MapMarkable

  validates :short_name, presence: true
  validates :faculty_id, presence: true

  belongs_to :faculty

  has_and_belongs_to_many :teachers
  has_many :courses
  has_many :careers

end
