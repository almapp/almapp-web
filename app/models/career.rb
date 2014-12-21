# == Schema Information
#
# Table name: careers
#
#  id                :integer          not null, primary key
#  name              :string           not null
#  url               :string
#  slug              :string           not null
#  curriculum_url    :string
#  academic_unity_id :integer
#  information       :text
#  created_at        :datetime
#  updated_at        :datetime
#

class Career < ActiveRecord::Base
  include Commentable
  include Posteable
  include PostPublisher
  include EventPublisher
  include Likeable

  validates :name, presence: true, uniqueness: {scope: :academic_unity_id}

  belongs_to :academic_unity

  has_many :enrolled_careers
  has_many :students, through: :enrolled_careers, source: :user

  extend FriendlyId
  friendly_id :name, use: :scoped, scope: :academic_unity # http://www.rubydoc.info/github/norman/friendly_id/FriendlyId/Scoped
end
