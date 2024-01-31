source 'https://rubygems.org'

ruby '3.2.2' # Change to the appropriate Ruby version

# Rails framework
gem 'rails', '~> 7.1.1'
gem 'sprockets-rails'
gem 'pg', '~> 1.1'
gem 'puma', '>= 5.0'
gem 'importmap-rails'
gem 'turbo-rails'
gem 'stimulus-rails'
gem 'jbuilder'
gem 'tzinfo-data', platforms: %i[windows jruby]
gem 'bootsnap', require: false

# Development and test gems
group :development, :test do
  gem 'capybara'
  gem 'debug', platforms: %i[mri windows]
  gem 'factory_bot_rails'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'will_paginate'
  gem 'web-console' # Only for development
end

# Test gems
group :test do
  gem 'selenium-webdriver'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'rails-controller-testing'
end

# Code quality and security
gem 'rubocop', '>= 1.0', '< 2.0'
gem 'cancancan', '~> 1.9'
gem 'devise', '~> 4.9'
