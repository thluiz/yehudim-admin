source 'https://rubygems.org'

#rails tzinfo error
gem 'tzinfo-data'

#upload
gem 'carrierwave'
gem 'fog'

# Security
gem 'devise'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.1'

platforms :jruby do
  #ruby '1.9.3', :engine => 'jruby', :engine_version => '1.7.9'
  # Use jdbcpostgresql as the database for Active Record
  gem 'activerecord-jdbcpostgresql-adapter'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyrhino'
end

platforms :mri, :mingw do
  group :postgresql do
    gem 'pg', '>= 0.11.0'
  end
   
  group :production do
    gem 'therubyracer'
  end
end

gem 'bootstrap-sass', '~> 3.2.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',  group: :doc

group :development do
  gem 'pry'
  gem 'pry-rails'
  gem 'mina'
end


