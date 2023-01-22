# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

gem 'bootsnap', require: false
gem 'jb'
gem 'pagy'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.4', '>= 7.0.4.1'
gem 'rest-client'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'zlib'

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'dotenv-rails'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rspec-rails', '~> 6.0.0'
end

group :test do
  gem 'shoulda-matchers'
end

group :development do
  gem 'rubocop'
end
