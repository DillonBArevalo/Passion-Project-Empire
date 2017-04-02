class CharactersClass < ActiveRecord::Base
  belongs_to :character
  belongs_to :class, class_name: "CharacterClass"

end
