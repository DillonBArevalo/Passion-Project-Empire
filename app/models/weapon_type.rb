class WeaponType < ActiveRecord::Base
  has_many :weapons
  has_many :characters_weapons, through: :weapons
  has_many :characters, through: :characters_weapons
  has_many :users, through: :characters

  validates :name, :range, :hands, presence: true

end
