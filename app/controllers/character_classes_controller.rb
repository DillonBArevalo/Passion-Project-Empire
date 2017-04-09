get '/character_classes' do
  @character_classes = CharacterClass.all
  erb :'character_classes/index'
end
