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

class Building < ActiveRecord::Base
  include Commentable
  include PostTarget
  include PostPublisher
  include EventPublisher
  include Likeable
  include Mapable
  include Nameable

  validates :name, presence: true
  validates :campus_id, presence: true
  validates :abbreviation, presence: true #, uniqueness: {scope: 'campus.organization'}
  validates :short_name, presence: true   #,   uniqueness: {scope: 'campus.organization'}

  belongs_to :campus
  delegate :organization, :to => :campus, :allow_nil => true

  # has_and_belongs_to_many :groups

end
