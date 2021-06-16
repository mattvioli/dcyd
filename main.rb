require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'

enable :sessions

require_relative 'db/db'
require_relative 'models/user'
require_relative 'models/posts'
require_relative 'models/answers'
require_relative 'helpers/sessions_helper'
require_relative 'helpers/posts_helper'
require_relative 'helpers/profile_helper'
require_relative 'controllers/users_controller'
require_relative 'controllers/sessions_controller'
require_relative 'controllers/posts_controller'
require_relative 'controllers/answers_controller'


get '/' do
  post_results = posts_data()
  reply_results = reply_data()
  erb :'posts/index', locals: { posts: post_results, replies: reply_results }
end



