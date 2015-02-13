# == Schema Information
#
# Table name: devices
#
#  id         :integer          not null, primary key
#  platform   :string(255)
#  token      :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Device < ActiveRecord::Base
  DEVICES = %w(ios android windows_phone)

  belongs_to :user

  validates :token, presence: true, uniqueness: { scope: :user_id }
  validates :platform, presence: true, inclusion: { in: DEVICES, case_sensitive: false }

  scope :platform_is, -> (device_platform) { where(platform:  device_platform.to_s.downcase) }

  def platform_is?(device_platform)
    !!(device_platform.to_s =~/#{platform}/i)
  end

end
