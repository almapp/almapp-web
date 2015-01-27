source 'https://rubygems.org'

gem 'rails', '4.1.6'
gem 'rails-api'

# Must add extension:
# CREATE EXTENSION unaccent;
gem 'pg'

gem 'jbuilder'
gem 'jbuilder_cache_multi'
gem 'oj'
gem 'oj_mimic_json'

# Searching
# https://shellycloud.com/blog/2013/10/adding-search-and-autocomplete-to-a-rails-app-with-elasticsearch
gem "searchkick" # rake searchkick:reindex CLASS=Place

group :development, :test do
  # gem 'debugger'
  gem "bullet"
  gem 'meta_request' # https://chrome.google.com/webstore/detail/railspanel/gjpfobpafnhjhbajcjgccbbdofdckggg
  gem 'spring'
  gem 'awesome_print'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'annotate'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', '~> 0.4.0'
end

group :production do

end

gem 'devise_token_auth'
gem 'omniauth-github',        :git => 'git://github.com/intridea/omniauth-github.git'
gem 'omniauth-facebook',      :git => 'git://github.com/mkdynamic/omniauth-facebook.git'
gem 'omniauth-google-oauth2', :git => 'git://github.com/zquestz/omniauth-google-oauth2.git'

gem 'sass'
gem 'compass'

gem 'validates_timeliness', '~> 3.0'
gem 'active_record_union'

gem 'nokogiri'

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
