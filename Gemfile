source 'https://rubygems.org'
ruby '2.2.0'

gem 'bootstrap-sass'
gem 'coffee-rails', '~> 4.1.0'
gem 'figaro', github: 'asux/figaro', branch: 'feature/eb-set-command'
gem 'high_voltage'
gem 'jquery-rails'
gem 'mysql2'
gem 'pry-rails'
gem 'puma'
gem 'rails', '4.2.0'
gem 'sass-rails', '~> 5.0'
gem 'simple_form'
gem 'slim-rails'
gem 'turbolinks'
gem 'uglifier', '>= 1.3.0'
group :development do
  gem 'better_errors'
  gem 'guard-bundler'
  gem 'guard-pow'
  gem 'guard-rspec'
  gem 'hub', require: nil
  gem 'quiet_assets'
  gem 'rails_layout'
  gem 'rb-fchange', require: false
  gem 'rb-fsevent', require: false
  gem 'rb-inotify', require: false
  gem 'spring-commands-rspec'
end

group :development, :test do
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'rspec-rails'
  gem 'rspec_junit_formatter', github: 'circleci/rspec_junit_formatter',
                               require: false
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'selenium-webdriver'
  gem 'simplecov', require: false
  gem 'simplecov-csv', require: false
  gem 'shoulda-matchers'
end
