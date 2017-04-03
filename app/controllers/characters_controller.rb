get '/characters' do
  @characters = Character.all
  erb :'characters/index'
end

get '/characters/new' do
  erb :'characters/new'
end

post '/characters' do

end

get '/characters/:id' do
  @character = Character.find(params[:id])
  erb :'characters/show'
end

get '/characters/:id/edit' do

end

put '/characters/:id' do

end

delete '/characters/:id' do

end
