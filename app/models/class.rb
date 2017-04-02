class Class < ActiveRecord::Base
  has_many :characters_classes
  has_many :characters, through: :characters_classes
  has_many :users, through: :characters

  validates :name, presence: true

end
