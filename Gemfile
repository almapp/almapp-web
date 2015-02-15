source 'https://rubygems.org'

ruby '2.1.2'

gem 'rails', '4.1.6'
gem 'rails-api'

# Database
gem 'pg'

# Server
gem 'puma'

# Tasks
gem 'clockwork'
gem 'sidekiq'
gem 'redis'

gem 'jbuilder'
gem 'jbuilder_cache_multi'
gem 'oj'
gem 'oj_mimic_json'
gem 'acts-as-taggable-on', '~> 3.4'

# Images
gem 'paperclip', '~> 4.2'

# Notifications
gem 'rpush'

# Chat
gem 'faye-rails'
gem 'faye-redis'
gem 'thin'
gem 'eventmachine'
# gem 'faye-redis'

# Email
gem 'gmail'

# Searching
# https://shellycloud.com/blog/2013/10/adding-search-and-autocomplete-to-a-rails-app-with-elasticsearch
# To Deploy: https://gist.github.com/gourneau/66e0bd90c92ad829590b
gem 'searchkick' # rake searchkick:reindex CLASS=Place
# gem 'typhoeus'

group :development, :test do
  # gem 'debugger'
  gem 'oauth2'
  gem 'bullet'
  gem 'meta_request' # https://chrome.google.com/webstore/detail/railspanel/gjpfobpafnhjhbajcjgccbbdofdckggg
  gem 'spring'
  gem 'awesome_print'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'annotate'

  gem 'rubocop', require: false
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', '~> 0.4.0'
end

group :production do
  gem 'rails_12factor'
end

gem 'devise'
gem 'doorkeeper'

gem 'sass'
gem 'compass'

gem 'validates_timeliness', '~> 3.0'
gem 'active_record_union'

gem 'nokogiri'
gem 'certified'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano', :group => :development

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
