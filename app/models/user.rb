class User < ActiveRecord::Base
  has_many :characters

  validates :name, presence: true, uniqueness: true
  validates :password_hash, presence: true
end
