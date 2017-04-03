get '/characters' do
  @characters = Character.all
  erb :'characters/index'
end

get '/characters/new' do
  @character_classes = CharacterClass.all
  @weapons = Weapon.all
  @armors = Armor.all
  erb :'characters/new'
end

post '/characters' do
  p params
  "made it"
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
