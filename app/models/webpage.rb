# == Schema Information
#
# Table name: webpages
#
#  id                     :integer          not null, primary key
#  identifier             :string(255)      not null
#  name                   :string(255)      not null
#  owner                  :string(255)
#  organization_id        :integer          not null
#  page_type              :integer          default(0), not null
#  information            :text             default(""), not null
#  available              :boolean          default(TRUE), not null
#  secure_protocol        :boolean          default(FALSE), not null
#  requires_login         :boolean          default(FALSE), not null
#  should_open_in_browser :boolean          default(TRUE), not null
#  home_url               :string(255)      not null
#  login_url              :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#

class Webpage < ActiveRecord::Base
  searchkick word_start: [:identifier], text_middle: [:name]

  validates :identifier, presence: true
  validates :name, presence: true
  validates :home_url, presence: true

  enum page_type: [ :community, :official, :political_party, :utility]

  belongs_to :organization

end
