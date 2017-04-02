class Weapon < ActiveRecord::Base
  has_many :characters_weapons
  has_many :characters, through: :characters_weapons
  has_many :users, through: :characters
  belongs_to :type, class_name: "WeaponType"

  validates :name, :offense_bonus, :defense_bonus, :damage_bonus, presence: true

end
