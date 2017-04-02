get '/login' do
  erb :'sessions/login'
end

post '/login' do
  @user = User.find_by(name: params[:name])
  if @user && @user.password == params[:password]
    session[:id] = @user.id
    redirect "/users/#{@user.id}"
  else
    @errors = ["Username or Password Incorrect!"]
    erb :'sessions/login'
  end
end

delete '/logout' do
  session[:id] = nil
  redirect '/'
end
