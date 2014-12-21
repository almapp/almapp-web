# == Schema Information
#
# Table name: organizations
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  slug        :string           not null
#  information :text
#  image       :string
#  url         :string
#  created_at  :datetime
#  updated_at  :datetime
#  facebook    :string
#  twitter     :string
#

class Organization < ActiveRecord::Base
end
