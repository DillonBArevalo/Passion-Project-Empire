get '/weapons' do
  @weapons = Weapon.all
  if request.xhr?
    erb :'weapons/index', layout: false
  else
    erb :'weapons/index'
  end
end
