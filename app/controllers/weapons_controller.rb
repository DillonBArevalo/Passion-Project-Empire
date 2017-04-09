get '/weapons' do
  @weapons = Weapon.all
  erb :'weapons/index'
end
