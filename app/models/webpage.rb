# == Schema Information
#
# Table name: webpages
#
#  id                      :integer          not null, primary key
#  identifier              :string(255)      not null
#  name                    :string(255)      not null
#  owner                   :string(255)
#  organization_id         :integer          not null
#  page_type               :integer          default(0), not null
#  information             :text             default(""), not null
#  available               :boolean          default(TRUE), not null
#  secure_protocol         :boolean          default(FALSE), not null
#  requires_login          :boolean          default(FALSE), not null
#  should_open_in_browser  :boolean          default(TRUE), not null
#  home_url                :string(255)      not null
#  login_url               :string(255)
#  created_at              :datetime
#  updated_at              :datetime
#  icon_file_name          :string(255)
#  icon_content_type       :string(255)
#  icon_file_size          :integer
#  icon_updated_at         :datetime
#  background_file_name    :string(255)
#  background_content_type :string(255)
#  background_file_size    :integer
#  background_updated_at   :datetime
#

class Webpage < ActiveRecord::Base
  searchkick word_start: [:identifier], text_middle: [:name]

  validates :identifier, presence: true
  validates :name, presence: true
  validates :home_url, presence: true

  enum page_type: [ :community, :official, :political_party, :utility]

  has_attached_file :icon,
                    :styles => { :original => '150x150', :small => '100x100'},
                    :url => '/paperclip_images/:class/:attachment/:id_partition/:style/:hash.:extension',
                    :hash_secret => "longSecretString",
                    :default_url => '/images/webpages/icon/default/:style.png'
  validates_attachment :icon,  :content_type => { :content_type => %w(image/png)}

  has_attached_file :background,
                    :styles => { :original => '375x375', :small => '250x250'},
                    :url => '/paperclip_images/:class/:attachment/:id_partition/:style/:hash.:extension',
                    :hash_secret => "longSecretString",
                    :default_url => '/images/webpages/background/default/:style.png'
  validates_attachment :background,  :content_type => { :content_type => %w(image/jpeg image/jpg image/png)}

  def set_icon_from_url(url)
    begin
      self.icon = URI.parse(url)
    rescue
      puts "Error #{$!} on #{self.identifier} icon"
    end
  end

  def set_background_from_url(url)
    begin
      self.background = URI.parse(url)
    rescue
      puts "Error #{$!} on #{self.identifier} background"
    end
  end

  belongs_to :organization

end
