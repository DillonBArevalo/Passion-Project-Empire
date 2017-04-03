class Character < ActiveRecord::Base
  belongs_to :user
  has_many :characters_classes
  has_many :characters_weapons
  has_many :characters_armors
  has_many :character_classes, through: :characters_classes
  has_many :weapons, through: :characters_weapons
  has_many :armors, through: :characters_armors
  has_many :weapon_types, through: :weapons, source: :weapon_type

  validates :name, presence: true
end
