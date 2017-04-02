class WeaponType < ActiveRecord::Base
  has_many :weapons

  validates :name, :range, :hands, presence: true

end
