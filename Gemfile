source 'https://rubygems.org'

ruby '2.2.3'

gem 'puma'

gem 'rails', '4.2.4'
gem 'pg'
gem 'pundit'
gem 'bcrypt', '~> 3.1.7'

gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'sdoc', '~> 0.4.0', group: :doc

group :production do
  gem 'rails_12factor'
end

group :test do
  gem 'simplecov', require: false
end

group :development, :test do
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'capybara'
  gem 'brakeman'
  gem 'zonebie'
end

group :development do
  gem 'quiet_assets'
  gem 'sql_queries_count'
end

