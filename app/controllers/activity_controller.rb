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
    params[:dogs].each do |dog_id|
      Dog.find(dog_id).activities.build(
        name: params[:name],
        duration: params[:duration]
      ).save
    end
    redirect '/activities'
  end

  get '/activities/:id/edit' do
    @activity = Activity.find(params[:id])
    if @activity.dog.user_id == current_user.id
      @dogs = current_user.dogs
      erb :'activities/edit'
    else
      redirect '/activities'
    end
  end

  patch '/activities/:id' do
    activity = Activity.find(params[:id])
    if activity.dog.user_id == current_user.id
      activity.update(
      name: params[:name],
      duration: params[:duration],
      dog_id: params[:dogs][0]
      )
    end
    redirect '/activities'
  end

  delete '/activities/:id/delete' do
    activity = Activity.find(params[:id])
    if activity.dog.user_id == current_user.id
      Activity.destroy(activity.id)
    end
    redirect '/activities'
  end
end