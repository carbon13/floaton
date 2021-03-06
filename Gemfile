source 'https://rubygems.org'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.1'
# Use mysql as the database for Active Record
gem 'mysql2'

# Localization
gem 'rails-i18n'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
gem 'bootstrap-sass', '~> 3.3.4'
gem 'font-awesome-sass'
gem 'autoprefixer-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Active Record extension
gem "squeel"
# Make yaml file from DB
gem 'yaml_db'
# User authentication
gem 'devise'
# Decorator
gem 'draper'
# Simple form
gem 'simple_form'
# Pagination
gem 'kaminari'
# Handling tree structure
gem 'acts_as_tree'
# Draw chart
gem 'lazy_high_charts'

# Active Job
gem 'responders'
gem 'resque'
gem 'resque-scheduler'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Generate test data
  gem 'faker'
  gem 'faker-japanese'
  # Cautch N + 1 problem
  gem 'bullet'
  # For debug
  gem 'pry-byebug'
  gem 'pry-stack_explorer'
  gem 'pry-rails'
  gem 'better_errors'
  gem 'binding_of_caller' 
  gem 'quiet_assets'
  gem 'rack-mini-profiler'
  gem 'tapp'

  # Metrics
  gem 'metric_fu'
  # Security check
  gem 'brakeman'
  # Write schema to model.rb
  gem 'annotate'
  # Unit test
  gem 'rspec'
  gem 'rspec-rails'
  gem "factory_girl_rails"
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :development do
  # Deploy
  gem 'capistrano', '~> 3.2.0'
  gem 'capistrano-rbenv'
  gem 'capistrano-rails'
  gem 'capistrano-bundler', github: 'capistrano/bundler'
  gem 'capistrano3-unicorn'
  gem 'mailcatcher'
end

group :test do
  # Integration test
  gem 'cucumber-rails', require: false
  gem 'capybara-webkit'
end

