# note that I can't use class by itself because that's reserved. This makes my join table characters_classes remarkably similar to my character_class table. I might revisit this later.
class CharacterClass < ActiveRecord::Base
  has_many :characters_classes, foreign_key: :class
  has_many :characters, through: :characters_classes
  has_many :users, through: :characters

  validates :name, presence: true

end
