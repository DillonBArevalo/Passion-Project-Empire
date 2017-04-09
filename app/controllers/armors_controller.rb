get '/armors' do
  @armors = Armor.all
  erb :'armors/index'
end
