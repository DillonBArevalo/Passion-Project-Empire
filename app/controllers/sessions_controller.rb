get '/login' do
  erb :'sessions/login'
end

post '/login' do
  session[:id] = params[:id]
  redirect "/users/#{params[:id]}"
end

delete '/logout' do
  session[:id] = nil
  redirect '/'
end
