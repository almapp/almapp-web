require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module AlmappWeb
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    config.paperclip_defaults = {:url => '/paperclip_images/:class/:attachment/:id_partition/:style/:hash.:extension',
                                 :hash_secret => ENV['PAPERCLIP_HASH'] || 'obfuscation_string',
                                 :default_url => '/images/:class/default/:style.:extension'}

    config.middleware.use Rack::Deflater

    config.autoload_paths += %W(#{config.root}/lib)
    config.autoload_paths += Dir["#{config.root}/lib/loaders/**/"]

    config.middleware.delete Rack::Lock
    #config.middleware.use FayeRails::Middleware, mount: '/faye', engine: {type: Faye::Redis, host: 'localhost'}, :timeout => 25 do
    config.middleware.use FayeRails::Middleware, mount: '/faye', :timeout => 25 do
      # curl http://localhost:3000/faye -d 'message={"channel":"/chat/A3", "data":"hello"}'
      # listen(9292)
      add_extension(ChatMessageValidator.new)

      map '/chat/**' => ChatManagerController
      map :default => :block
    end
  end
end
