class UserController < ApplicationController
  get '/signup' do
    erb :'users/signup'
  end

  post '/signup' do
    @user = User.create(
      username: params[:username],
      email: params[:email],
      password: params[:password]
    )
    redirect '/activities'
  end
end
