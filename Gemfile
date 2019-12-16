source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

################
## Base Rails ##
################

gem 'rails', '6.0.2'
gem 'pg', ">= 0.18"
gem 'puma', '~> 4.1'
gem 'sass-rails', '~> 5'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.2', require: false

#############
## Goodies ##
#############

gem 'slim-rails'  # Better views
gem 'sorcery'     # User sessions
gem 'pundit'      # Policy-based authorization

################################
## Development Specific Tools ##
################################

group :development, :test do
  gem 'byebug'            # Interactive Debug Console
  gem 'factory_bot_rails' # Test Data Mocking
  gem 'i18n-tasks'        # I18n Health Validation
  gem 'rspec-rails'       # RSpec Testing
end

group :development do
  gem 'brakeman'      # Static Code Analysis
  gem 'bundler-audit' # Checks Gemfile.lock for vulnerabilities
  gem 'html2slim'     # Automatically convert erb to slim
  gem 'letter_opener' # Open email locally in development
  # Enforce ruby style guide
  gem 'rubocop'
  gem 'rubocop-faker'
  gem 'rubocop-rspec'
  gem 'rubocop-performance'
  # Access an interactive console on exception pages or by calling 'console'
  # anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the
  # background. Read more: https://github.com/rails/spring
  gem 'spring' # Faster Development at the cost of sanity
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'faker'             # Lorem Ipsum on steroids
  gem 'shoulda-matchers'  # Cleaner RSpec Expectations
  gem 'simplecov'         # Code Coverage Validation
  gem 'pundit-matchers'   # Shoulda-matchers for pundit
end
