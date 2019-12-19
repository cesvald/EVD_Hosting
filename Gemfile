source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'

# Database and data related
gem 'pg'
gem 'pg_search'
gem 'postgres-copy'
gem 'schema_plus'
gem 'schema_associations'


gem 'devise', '~> 3.5.3'

# Observers
gem 'rails-observers'

# Decorators
gem 'draper'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
gem "therubyracer"
gem "less-rails" 
gem 'twitter-bootstrap-rails'
gem "bootstrap_flash_messages"
gem 'bootstrap_form'

# bootstrap-datepicker-rails
gem 'bootstrap-datepicker-rails'

# bootstrap-datetime-picker
gem 'momentjs-rails', '>= 2.9.0'
gem 'bootstrap3-datetimepicker-rails', '~> 4.17.47'

# Rails-JQuery nested manager
gem "nested_form"

# HTML manipulation and formatting
gem 'formtastic'
gem 'formtastic-bootstrap'

# xml manipulation
gem 'rubyzip', '= 1.0.0'
gem 'axlsx', '= 2.0.1'
gem 'axlsx_rails'

# Third party mailer
gem 'sparkpost_rails'

#paginator
gem 'kaminari'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'

#Authorization gem
gem 'cancan'

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Front end stuff
gem 'jquery-rails'
gem 'slim-rails'
gem 'backbone-on-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'country_select'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

#User Puma as the app server
gem 'puma'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Another Tools
gem 'has_scope', '0.6.0'
gem 'spectator-validates_email',  require: 'validates_email'
gem 'inherited_resources'
gem 'gon'
gem 'carrierwave'

# Ordering
gem 'ranked-model'

#For security reasons gem updated
gem 'loofah', '~> 2.3.1'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  %w[rspec-core rspec-expectations rspec-mocks rspec-rails rspec-support].each do |lib|
    gem lib, :git => "https://github.com/rspec/#{lib}.git", :branch => 'master'
  end
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'database_cleaner'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end


gem 'rails_12factor', group: :production
