source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.4'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'bootstrap', '~> 4.3.1'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.3'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
# Use SCSS for stylesheets
# Use Uglifier as compressor for JavaScript assets
# See https://github.com/rails/execjs#readme for more supported runtimes
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'
gem 'mini_racer', platforms: :ruby
# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'
gem 'devise', '>= 4.7.1'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
# Reduces boot times through caching; required in config/boot.rb
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'faraday'
gem 'faraday_middleware'
gem 'active_model_serializers'
gem 'jwt'
gem 'jsonapi-rails'
gem 'fast_jsonapi'
gem 'jsonapi-serializers'
gem 'caprese'
gem 'doorkeeper'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get
  # a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara'
  gem 'factory_bot_rails'
  gem 'rspec-rails', '~> 3.8'
  gem 'faker', require: false
end

group :development do
  # Access an interactive console on exception pages or by
  # calling 'console' anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application
  # running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'rubocop', require: false
  gem 'rubocop-rails'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'simplecov', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]