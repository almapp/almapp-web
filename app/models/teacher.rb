# == Schema Information
#
# Table name: teachers
#
#  id                  :integer          not null, primary key
#  name                :string(255)
#  email               :string(255)
#  url                 :string(255)
#  information         :text             default("")
#  created_at          :datetime
#  updated_at          :datetime
#  comments_count      :integer          default(0), not null
#  likes_count         :integer          default(0), not null
#  dislikes_count      :integer          default(0), not null
#  avatar_file_name    :string(255)
#  avatar_content_type :string(255)
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#

class Teacher < ActiveRecord::Base
  searchkick callbacks: false, word_start: [:email], text_middle: [:name]

  include Commentable
  include Likeable

  validates :name, presence: true

  has_attached_file :avatar,
                    :styles => { :original => '300x300>', :thumb => '100x100>'}
  validates_attachment :avatar,  :content_type => { :content_type => %w(image/jpeg image/jpg image/gif image/png)}

  has_and_belongs_to_many :sections, -> { uniq }, dependent: :destroy
  has_and_belongs_to_many :academic_unities, -> { uniq }, dependent: :destroy

  def faculties
    Faculty.joins(:academic_unities).merge(academic_unities)
  end

  has_many :courses, through: :sections

  def courses_for_period(year = current_year, period = current_period)
    Course.joins(:sections).merge(sections.period(year, period)) #.order('courses.initials ASC')
  end
end
