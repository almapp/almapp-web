# == Schema Information
#
# Table name: organizations
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  slug        :string           not null
#  information :text
#  image       :string
#  url         :string
#  created_at  :datetime
#  updated_at  :datetime
#  facebook    :string
#  twitter     :string
#

class Organization < ActiveRecord::Base
  include Commentable
  include Posteable
  include PostPublisher
  include EventPublisher
  include Likeable
  include MapMarkable

  validates :name, presence: true
  validates :slug,
            presence: true,
            uniqueness: true,
            exclusion: { in: %w(www mail ftp dev help), message: '%{value} is reserved.' },
            format: { with: /\A(?=.*[a-z])[a-z\d]+\Z/i, message: 'incorrect format' }

  has_many :users
  has_many :groups

  has_many :campuses
  has_many :faculties, through: :campuses
  has_many :academic_unities, through: :faculties

  has_many :careers, through: :academic_unities
  has_many :courses, through: :academic_unities
  has_many :teachers, through: :academic_unities

  has_many :schedule_modules

  has_and_belongs_to_many :groups

  has_many :campuses_places, through: :campuses, source: :places, class_name: 'Place'
  has_many :places

  def places
    first_level_places.append(campuses_places)
  end


  def self.find_with_subdomain(subdomain)
    self.where("lower(slug) = ?", subdomain.downcase).first if (subdomain.present? && subdomain.size != 0)
  end
end
