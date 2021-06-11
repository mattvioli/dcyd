require 'sinatra'
require 'sinatra/reloader'
require 'pg'

require_relative 'db/db'
require_relative 'models/user'
require_relative 'controllers/users_controller'

get '/' do
  erb :index
end





