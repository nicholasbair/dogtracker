require './config/environment'
require 'securerandom'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, ENV["SESSION_SECRET"] || SecureRandom.hex(64)
  end

  get '/' do
    erb :index
  end
end
