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
  if !params[:name].empty?
    @character = Character.create(name: params[:name])
    User.find(session[:id]).characters << @character
    @character.character_classes << CharacterClass.find(params[:character_class])
    @character.weapons << Weapon.find(params[:weapon])
    @character.armors << Armor.find(params[:armor])
    redirect '/characters'
  else
    @character_classes = CharacterClass.all
    @weapons = Weapon.all
    @armors = Armor.all
    @errors = ["You must give your character a name!"]
    erb :'characters/new'
  end
end

get '/characters/:id' do
  @character = Character.find(params[:id])
  erb :'characters/show'
end

get '/characters/:id/edit' do
  @character = Character.find(params[:id])
  @character_classes = CharacterClass.all
  @weapons = Weapon.all
  @armors = Armor.all
  erb :'characters/edit'
end

put '/characters/:id' do

end

delete '/characters/:id' do

end
