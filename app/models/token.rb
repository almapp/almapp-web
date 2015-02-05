# == Schema Information
#
# Table name: tokens
#
#  id            :integer          not null, primary key
#  access_token  :string(255)
#  refresh_token :string(255)
#  expires_at    :datetime
#  user_id       :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class Token < ActiveRecord::Base

  belongs_to :user

  def to_params
    {refresh_token: refresh_token,
     client_id: '1053654147449-kqhfcsi8cr7ck2s4jhddc3ttefeqr3l8.apps.googleusercontent.com',
     client_secret: 'BOVx4ZAdCr_1UtpVRyklA_7Y',
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
