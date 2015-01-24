# == Schema Information
#
# Table name: api_keys
#
#  id            :integer          not null, primary key
#  client        :string(255)      default(""), not null
#  key           :string(255)      default(""), not null
#  contact_name  :string(255)      default(""), not null
#  contact_email :string(255)      default(""), not null
#  valid         :boolean          default(TRUE), not null
#  created_at    :datetime
#  updated_at    :datetime
#

class ApiKey < ActiveRecord::Base
  validates :client, presence: true
  validates :key, presence: true, uniqueness: true
  validates :contact_name, presence: true
  validates :contact_email, presence: true, format: /\A[a-z0-9]+[a-z0-9\._-]*@[a-z0-9\.]+\.[a-z]{2,5}\z/i
  validates :valid_key, presence: true

  before_validation :prepare_key, on: :create

  def prepare_key
    self.key = generate_api_key
    self.valid_key = true
  end

  def generate_api_key
    loop do
      token = SecureRandom.base64.tr('+/=', 'Qrt')
      break token unless ApiKey.exists?(key: token)
    end
  end

end
