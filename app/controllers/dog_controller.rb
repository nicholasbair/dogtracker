require 'rack-flash'

class DogController < ApplicationController
  use Rack::Flash

  before do
    if !logged_in?
      redirect '/login'
    end
  end

  get '/dogs' do
    @dogs = current_user.dogs
    erb :'dogs/index'
  end

  get '/dogs/new' do
    erb :'dogs/new'
  end

  get '/dogs/:id' do
    @dog = Dog.find(params[:id])
    erb :'dogs/show'
  end

  post '/dogs' do
    current_user.dogs.build(name: params[:name]).save
    flash[:message] = "Successfully added a dog!"
    redirect '/dogs'
  end

  get '/dogs/:id/edit' do
    @dog = Dog.find(params[:id])
    if @dog.user_id == current_user.id
      erb :'dogs/edit'
    else
      redirect '/dogs'
    end
  end

  patch '/dogs/:id' do
    dog = Dog.find(params[:id])
    if dog.user_id == current_user.id
      dog.update(name: params[:name])
      flash[:message] = "Successfully updated a dog!"
    end
    redirect '/dogs'
  end

  delete '/dogs/:id/delete' do
    dog = Dog.find(params[:id])
    if dog.user_id == current_user.id
      Dog.destroy(dog.id)
      flash[:message] = "Successfully deleted a dog!"
    end
    redirect '/dogs'
  end
end
