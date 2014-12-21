# == Schema Information
#
# Table name: campuses
#
#  id              :integer          not null, primary key
#  short_name      :string           not null
#  name            :string           not null
#  slug            :string           not null
#  organization_id :integer          not null
#  address         :string
#  url             :string
#  facebook        :string
#  twitter         :string
#  phone           :string
#  email           :string
#  description     :text
#  zoom            :float            default("0.0")
#  angle           :float            default("0.0")
#  tilt            :float            default("0.0")
#  latitude        :float            default("0.0")
#  longitude       :float            default("0.0")
#  floor           :string
#  created_at      :datetime
#  updated_at      :datetime
#

class Campus < ActiveRecord::Base
  include Commentable
  include Posteable
  include PostPublisher
  include Likeable
  include MapMarkable

  validates :short_name, presence: true, uniqueness: {scope: :organization_id}
  validates :name, presence: true
  validates :organization_id, presence: true

  belongs_to :organization

  has_many :faculties
  has_many :academic_unities, through: :faculties
  has_many :courses, through: :academic_unities

  has_many :places

end
