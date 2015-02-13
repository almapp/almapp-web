NAME = 'Almapp-iOS'

namespace :notifications do

  desc 'Setup rpush for Apple'
  task apple: :environment do
    app = Rpush::Apns::App.where(name: NAME).first_or_initialize

    if Rails.env.production?

    else
      app.certificate = File.read(File.join(Rails.root, 'config', 'initializers', 'private', 'apple', 'sandbox.pem'))
      app.environment = 'sandbox' # APNs environment.
    end

    app.password = ''
    app.connections = 1
    app.save!
  end

end
