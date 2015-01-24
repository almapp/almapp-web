# == Schema Information
#
# Table name: careers
#
#  id                :integer          not null, primary key
#  name              :string(255)      not null
#  url               :string(255)
#  curriculum_url    :string(255)
#  academic_unity_id :integer
#  information       :text             default("")
#  created_at        :datetime
#  updated_at        :datetime
#

class Career < ActiveRecord::Base
  include Commentable
  include PostTarget
  include PostPublisher
  include EventPublisher
  include Likeable

  validates :name, presence: true, uniqueness: {scope: :academic_unity_id}

  belongs_to :academic_unity

  has_many :enrolled_careers
  has_many :enrolled_students, through: :enrolled_careers, source: :user, class_name: 'User'

end
