class ActivityController < ApplicationController
  get '/activities' do
    erb :'/activities/index'
  end
end
