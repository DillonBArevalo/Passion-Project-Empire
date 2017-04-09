get '/armors' do
  @armors = Armor.all
  if request.xhr?
    erb :'armors/index', layout: false
  else
    erb :'armors/index'
  end
end
