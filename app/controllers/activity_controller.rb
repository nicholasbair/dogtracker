class ActivityController < ApplicationController
  before do
    if !logged_in?
      redirect '/login'
    end
  end

  get '/activities' do
    erb :'/activities/index'
  end
end
