class DogController < ApplicationController
  before do
    if !logged_in?
      redirect '/login'
    end
  end

  get '/dogs' do
    @dogs = Dog.find_by(user_id: current_user.id)
    erb :'dogs/index'
  end

  get '/dogs/:id' do
    @dog = Dog.find(params[:id])

    erb :'dogs/show'
  end

  get '/dogs/new' do
    erb :'dogs/new'
  end

  post '/dogs' do
    current_user.dogs.build(name: params[:name])

    redirect '/dogs'
  end

  get '/dogs/:id/edit' do
    erb :'dogs/edit'
  end

  patch '/dogs/:id' do

  end

  delete '/dogs/:id' do

  end
end
