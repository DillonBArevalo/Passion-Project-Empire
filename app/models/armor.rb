class Armor < ActiveRecord::Base
  has_many :characters_armors
  has_many :characters, through: :characters_armors

  validates :name, :passive_defense_bonus, :energy_reduction, presence: true
end
