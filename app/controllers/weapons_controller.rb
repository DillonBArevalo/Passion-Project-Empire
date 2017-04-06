get '/weapons' do
  @weapons = Weapons.all
  erb :'weapons/index'
end
