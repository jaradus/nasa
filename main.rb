require 'sinatra'
require 'active_record'
require 'sinatra/activerecord'
require 'sinatra/activerecord/rake'
require 'pg'
ActiveRecord::Base.logger = Logger.new(STDOUT)

set :environment, :development

# Load database
require_relative 'config/environments'

# Load models
require_relative 'models/astronaut'
require_relative 'models/moon'
require_relative 'models/planet'
require_relative 'models/voyage'

get '/' do
  @astronauts = Astronaut.all
  erb :index
end