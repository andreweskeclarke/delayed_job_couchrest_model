source 'http://rubygems.org'

gem 'rake'

group :test do
  gem 'pry'
  gem 'activerecord', (ENV['RAILS_VERSION'] || ['>= 3.0', '< 4.2'])
  gem 'actionmailer', (ENV['RAILS_VERSION'] || ['>= 3.0', '< 4.2'])
  gem 'coveralls', :require => false
  gem 'rspec', '>= 3'
  gem 'rubocop', '>= 0.25'
  gem 'simplecov', '>= 0.9'
  gem 'backports'
end

gemspec
