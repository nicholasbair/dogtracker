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
    @dogs = current_user.dogs
    erb :'/activities/new'
  end

  get '/activities/:id' do
    @activity = Activity.find(params[:id])
    erb :'activities/show'
  end

  post '/activities' do
    redirect '/activities'
  end

  get '/activities/:id/edit' do
    @activity = Activity.find(params[:id])
  end

  patch '/activities/:id' do
    activity = Activity.find(params[:id])
    activity.update()
    redirect '/activities'
  end

  delete 'activities/:id/delete' do
    activity = Activity.find(params[:id])
    Activity.destroy(activity.id)
    redirect '/activities'
  end
end
