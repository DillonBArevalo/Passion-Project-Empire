class User < ActiveRecord::Base
  has_many :characters

  validates :name, presence: true, uniquness: true
  validates :password, presence: true
end
