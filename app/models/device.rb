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
  DEVICE_IOS = 'ios'
  DEVICE_ANDROID = 'android'
  DEVICE_WINDOWS_PHONE = 'windows_phone'
  DEVICES = [DEVICE_IOS, DEVICE_ANDROID, DEVICE_WINDOWS_PHONE]

  belongs_to :user

  validates :token, presence: true, uniqueness: { scope: :user_id }
  validates :platform, presence: true, inclusion: { in: DEVICES, case_sensitive: false }

  scope :platform_is, -> (device_platform) { where(platform: Array(device_platform).map { |d| d.to_s.downcase }) }

  def self.rpush_app_name(platform)
    case platform
      when DEVICE_IOS
        'Almapp-iOS'

      when DEVICE_ANDROID
        'Almapp-Android'

      when DEVICE_WINDOWS_PHONE
        'Almapp-WindowsPhone'
    end
  end

  def platform_is?(device_platform)
    !!(device_platform.to_s =~/#{platform}/i)
  end

  def push(title, message, data)
    case platform
      when DEVICE_IOS
        puts 'ios'

        app_name = Device.rpush_app_name(DEVICE_IOS)

        n = Rpush::Apns::Notification.new
        n.app = Rpush::Apns::App.find_by_name(app_name)
        n.device_token = token
        n.alert = message
        n.data = data
        n.save!

      when DEVICE_ANDROID
        puts 'android'

      when DEVICE_WINDOWS_PHONE
        puts 'winphone'
    end
  end

  def self.broadcast(title, message, data, devices = DEVICES)
    # self.where(platform: to_devices).each do |device|
    self.platform_is(devices).each do |device|
      device.push(title, message, data)
    end
  end
end
