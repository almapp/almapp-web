# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  name                   :string(255)
#  username               :string(255)      not null
#  email                  :string(255)      default(""), not null
#  student_id             :string(255)
#  organization_id        :integer          not null
#  admin                  :boolean          default(FALSE)
#  male                   :boolean          default(TRUE)
#  country                :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  provider               :string(255)      not null
#  uid                    :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  confirmation_token     :string(255)
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string(255)
#  tokens                 :text
#  findeable              :boolean          default(TRUE), not null
#  public_email           :boolean          default(TRUE), not null
#

class User < ActiveRecord::Base
  include DeviseTokenAuth::Concerns::User
  include PostPublisher

  before_create :skip_confirmation!

  # User.create(email: 'pelopez2@uc.cl', organization: Organization.first, password:'randompassword', password_confirmation:'randompassword', provider:'email')
  # curl -H "Content-Type: application/json" -d '{"email":"cicontreras1@uc.cl","password":"miaumiaumiau", "organization_id":"1", "provider":"email", "password_confirmation":"miaumiaumiau", "confirm_success_url":"http://uc.lvh.me:3000/"}' -X POST http://uc.lvh.me:3000/api/v1/auth.json

  # http://uc.lvh.me:3000/api/v1/auth/sign_in.json?email=pelopez2@uc.cl&password=randompassword
  # curl -H "Content-Type: application/json" -d '{"email":"pelopez2@uc.cl","password":"randompassword"}' -X POST http://uc.lvh.me:3000/api/v1/auth/sign_in.json

  #Access-Token: XeyGZdFYdiYk7kQ0RfliLA
  #Cache-Control: max-age=0, private, must-revalidate
  #Client: Uunq7PSfOADXmFUXxTClag
  #Connection: close
  #Content-Length: 214
  #Content-Type: application/json; charset=utf-8
  #Date: Sun, 28 Dec 2014 02:01:42 GMT
  #Etag: "3333e8169d1d6131fe90102bfd45483d"
  #Expiry: 1420941702
  #Server: WEBrick/1.3.1 (Ruby/2.1.4/2014-10-27)
  #Token-Type: Bearer
  #Uid: pelopez2@uc.cl
  #X-Content-Type-Options: nosniff
  #X-Frame-Options: SAMEORIGIN
  #X-Request-Id: b4280d3c-911f-4a35-b813-df15431933e3
  #X-Runtime: 0.516963
  #X-Xss-Protection: 1; mode=block

  # On GET add:
  #"access-token": "XeyGZdFYdiYk7kQ0RfliLA",
  #"token-type":   "Bearer",
  #"client":       "Uunq7PSfOADXmFUXxTClag",
  #"expiry":       "1420941702",
  #"uid":          "pelopez2@uc.cl"

  # URL: http://uc.lvh.me:3000/api/v1/campuses


  validates :organization_id, presence: true
  validates :username, presence: true
  validates :email, presence: true, uniqueness: true, format: /\A[a-z0-9]+[a-z0-9\._-]*@[a-z0-9\.]+\.[a-z]{2,5}\z/i

  before_validation :create_username

  def create_username
    self.username = self.email.split('@').first
  end

  belongs_to :organization
  has_many :friendships
  has_and_belongs_to_many :sections

  has_many :assistantships
  has_many :assisting_sections, through: :assistantships, source: :section

  has_many :enrolled_careers
  has_many :careers, through: :enrolled_careers

  has_many :events_assistances
  has_many :attending_events, through: :events_assistances, source: :event, class_name: 'Event'

  has_many :commented_content, class_name: 'Comment'
  has_many :liked_content, class_name: 'Like'

  def email_with_override
    self.public_email? ? read_attribute(:email) : 'private'
  end


  def friends
    # (friends.all + inverse_friends.all).uniq
    # User.connection.execute('SELECT * FROM users WHERE user_id IN ((SELECT friend_id FROM friendships WHERE user_id = (?)) UNION (SELECT user_id FROM friendships WHERE friend_id = (?)))') #, :skip_logging)
    User.where('users.id IN ((SELECT friend_id FROM friendships WHERE user_id = (?) AND accepted = true) UNION (SELECT user_id FROM friendships WHERE friend_id = (?)  AND accepted = true))', self.id, self.id) #, :skip_logging)
  end

  def pending_friends
    User.where('users.id IN ((SELECT friend_id FROM friendships WHERE user_id = (?) AND accepted = false) UNION (SELECT user_id FROM friendships WHERE friend_id = (?)  AND accepted = false))', self.id, self.id)
  end
end
