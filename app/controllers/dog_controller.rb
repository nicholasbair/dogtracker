class DogController < ApplicationController
  before do
    if !logged_in?
      redirect '/login'
    end
  end

  get '/dogs' do
  end

  get '/dogs/new' do
  end

  post '/dogs' do

  end

  get '/dogs/:id/edit' do

  end

  patch '/dogs/:id' do

  end

  get 'dogs/:id/delete' do

  end

  delete '/dogs/:id' do

  end
end
