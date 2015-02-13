# == Schema Information
#
# Table name: oauth_applications
#
#  id           :integer          not null, primary key
#  name         :string(255)      not null
#  uid          :string(255)      not null
#  secret       :string(255)      not null
#  redirect_uri :text             not null
#  scopes       :string(255)      default(""), not null
#  created_at   :datetime
#  updated_at   :datetime
#

class OauthApplication < ActiveRecord::Base
  def self.register(name, redirect_uri = 'almapp://oauth/callback')
    Doorkeeper::Application.create!(name: name, redirect_uri: redirect_uri)
  end
end
