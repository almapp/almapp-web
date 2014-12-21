# == Schema Information
#
# Table name: teachers
#
#  id                :integer          not null, primary key
#  name              :string
#  slug              :string           not null
#  email             :string
#  url               :string
#  academic_unity_id :integer
#  information       :text
#  created_at        :datetime
#  updated_at        :datetime
#

class Teacher < ActiveRecord::Base
  include Commentable
  include Likeable

  validates :name, presence: true

  has_and_belongs_to_many :sections
  has_and_belongs_to_many :academic_unities

  def faculty
    # self.academic_unity.faculty 
  end

  def courses
    self.sections.courses
  end

  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  def slug_candidates
    [
    :name,
    [:name, :id]
    ]
  end
end
