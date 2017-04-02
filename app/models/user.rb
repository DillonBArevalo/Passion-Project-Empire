require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt
  has_many :characters
  has_many :characters_classes, through: :characters
  has_many :characters_weapons, through: :characters
  has_many :characters_armors, through: :characters
  has_many :classes, through: :characters_classes
  has_many :weapons, through: :characters_weapons
  has_many :armors, through: :characters_armors
  has_many :weapon_types, through: :weapons, source: :type

  validates :name, presence: true, uniqueness: true
  validates :password_hash, presence: true

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
