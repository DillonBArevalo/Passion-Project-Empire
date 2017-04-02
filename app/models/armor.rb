class Armor < ActiveRecord::Base
  has_many :characters_armors
  has_many :characters, through: :characters_armors
  has_many :users, through: :characters

  validates :name, :passive_defense_bonus, :energy_reduction, presence: true
end
