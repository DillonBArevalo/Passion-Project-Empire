get '/weapons' do
  ### MAKE MIGRATION TO ADD CREATOR ID TO WEAPONS BEFORE THIS WILL WORK
  # @weapons = Weapon.all
  # @base = Weapon.where(creator_id: nil)
  # @user_weapons = Weapon.where("creator_id > 0")
  # p @base
  # p @user_weapons
  erb :'weapons/index'
end
