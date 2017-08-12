source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.3'


# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'jquery-rails', '~> 4.3', '>= 4.3.1'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'happy_seed', :git => 'https://github.com/HappyFunCorp/happy_seed'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'rails_12factor'
gem 'haml-rails'
group :development, :test do
  gem 'sqlite3'
  gem 'rspec', '~> 3.5.0'
  gem 'rspec-rails', '~> 3.5.0'
  gem 'factory_girl_rails'
  gem 'guard-rspec', '~> 4.6.4', require: false
  gem 'database_cleaner'
  gem 'spring-commands-rspec'
  gem 'launchy'
  gem 'vcr'
  gem 'faker'
  gem 'dotenv-rails'
  gem 'rdiscount'
  gem 'rails-controller-testing'
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :test do
  gem 'webmock'
  gem 'fakeredis', require: 'fakeredis/rspec'
end

group :production do
  gem 'pg'
  gem 'lograge'
end

gem 'bootstrap-sass'
gem 'modernizr-rails'
gem 'meta-tags', require: 'meta_tags'
gem 'responders', '~> 2.0'
gem 'bh'
gem 'simple_form'
gem 'premailer-rails'
gem 'nokogiri'
gem 'devise', '~> 4.2'
gem 'omniauth'
gem 'omniauth-oauth2', '1.3.1'
gem 'omniauth-facebook'
gem 'devise_invitable', github: 'scambra/devise_invitable'