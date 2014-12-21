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
#

class AcademicUnity < ActiveRecord::Base
  include Commentable
  include Posteable
  include PostPublisher
  include EventPublisher
  include Zoneable
  include Likeable
  # include MapMarkable

  validates :short_name, presence: true
  validates :faculty_id, presence: true

  belongs_to :faculty

  has_and_belongs_to_many :teachers
  has_many :courses
  has_many :careers

  has_many :places, as: :area

  def campus
    return self.faculty.campus rescue nil
  end

  extend FriendlyId
  friendly_id :short_name, use: :scoped, scope: :faculty # http://www.rubydoc.info/github/norman/friendly_id/FriendlyId/Scoped


end
