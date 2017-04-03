get '/characters' do
  @characters = Character.all
  erb :'characters/index'
end

get '/characters/new' do

end

post '/characters' do

end

get '/characters/:id' do

end

get '/characters/:id/edit' do

end

put '/characters/:id' do

end

delete '/characters/:id' do

end
