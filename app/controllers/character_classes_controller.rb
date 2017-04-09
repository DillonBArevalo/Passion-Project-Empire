get '/character_classes' do
  @character_classes = CharacterClass.all
  if request.xhr?
    erb :'character_classes/index', layout: false
  else
    erb :'character_classes/index'
  end
end
