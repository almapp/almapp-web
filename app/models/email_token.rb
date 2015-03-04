# == Schema Information
#
# Table name: email_tokens
#
#  id            :integer          not null, primary key
#  provider      :string(255)      not null
#  access_token  :string(255)
#  refresh_token :string(255)      not null
#  code          :string(255)
#  expires_at    :datetime         not null
#  user_id       :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class EmailToken < ActiveRecord::Base
  validates :refresh_token, presence: true
  validates :expires_at, presence: true
  validates :provider, presence: :true, inclusion: { in: ['GMAIL'], case_sensitive: false }
  validates :user_id, presence: :true

  belongs_to :user

  def to_params
    {refresh_token: refresh_token,
     client_id: '1053654147449-s381161juabk3s1ut7kadbh8tjaqa5o4.apps.googleusercontent.com',
     client_secret: 'WwKf9m_1eYl5ZMvDalNnvMGK',
     grant_type: 'refresh_token'}
  end

  def request_token_from_google
    url = URI("https://accounts.google.com/o/oauth2/token")
    Net::HTTP.post_form(url, self.to_params)
  end

  def refresh!
    response = request_token_from_google
    data = JSON.parse(response.body)
    update_attributes(
    access_token: data['access_token'],
    expires_at: Time.now + (data['expires_in'].to_i).seconds
    )
  end

  def valid_access_token
    refresh! if expires_at < Time.now
    access_token
  end
end
