class Class < ActiveRecord::Base
  has_many :characters_classes
  has_many :characters, through: :characters_classes

  validates :name, presence: true

end
