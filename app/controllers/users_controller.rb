get '/users' do
  #all users
end

get '/users/new' do
  erb :'users/new'
end

post '/users' do
  @user = User.new(params[:user])
  if @user && @user.save
    redirect "/users/#{@user.id}"
  else
    @errors = @user.errors.full_messages
    @errors << "Password cannot be blank" unless !params[:user][:password].empty?
    erb :'users/new'
  end
end

get '/users/:id' do

end

get '/users/:id/edit' do

end

put '/users/:id' do

end

delete '/users/:id' do

end
