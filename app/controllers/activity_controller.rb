class ActivityController < ApplicationController
  before do
    if !logged_in?
      redirect '/login'
    end
  end

  get '/activities' do
    @activities = Activity.all
    erb :'/activities/index'
  end

  get '/activities/new' do
    erb :'/activities/new'
  end

  get '/activities/:id' do
    @activity = Activity.find(params[:id])
    erb :'activities/show'
  end

  post '/activities' do

  end

  get '/activities/:id/edit' do

  end

  patch '/activities/:id' do

  end

  delete 'activities/:id/delete' do

  end
end
