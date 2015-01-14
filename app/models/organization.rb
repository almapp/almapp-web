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

class Organization < ActiveRecord::Base
  include Commentable
  include PostTarget
  include PostPublisher
  include EventPublisher
  include Likeable
  include Mapable
  include Nameable

  validates :name, presence: true
  validates :short_name, presence: true
  validates :abbreviation,
            presence: true,
            uniqueness: true,
            exclusion: { in: %w(www mail ftp dev help), message: '%{value} is reserved.' },
            format: { with: /\A(?=.*[a-z])[a-z\d]+\Z/i, message: 'incorrect format' }

  has_many :users
  has_many :groups

  has_many :campuses
  has_many :faculties, through: :campuses
  has_many :buildings, through: :campuses
  has_many :academic_unities, through: :faculties

  has_many :careers, through: :academic_unities
  has_many :courses, through: :academic_unities
  has_many :teachers, through: :academic_unities

  has_many :schedule_modules

  has_and_belongs_to_many :groups
  has_many :enrolled_students, through: :faculties, source: :enrolled_students, class_name: 'User'

  has_many :webpages

  # Overrides has_many relationship from Mapable
  def places
    #first_level_places.append(campuses_places) # TODO create query
    result = first_level_places.to_a
    campuses.all.each do |campus|
      result.append(campus.places.to_a)
    end
    return result
  end

  # Overrides has_many relationship from PostTarget
  def posts
    result = direct_posts
    campuses.all.each do |campus|
      result.append(campus.posts)
    end
    return result
  end

  # Overrides has_many relationship from EventPublisher
  def events
    #first_level_places.append(campuses_places) # TODO create query
    []
  end


  def self.find_with_subdomain(subdomain)
    self.where("lower(abbreviation) = ?", subdomain.downcase).first if (subdomain.present? && subdomain.size != 0)
  end
end
