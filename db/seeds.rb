require 'faker'

# Create weapon types
WeaponType.create(name: "Short Sword", range: 1, hands_required: 1)
WeaponType.create(name: "Sword", range: 1, hands_required: 1)
WeaponType.create(name: "Great Sword", range: 1, hands_required: 2)
WeaponType.create(name: "Small Axe", range: 1, hands_required: 1)
WeaponType.create(name: "Large Axe", range: 1, hands_required: 2)
WeaponType.create(name: "Mace", range: 1, hands_required: 1)
WeaponType.create(name: "Maul", range: 1, hands_required: 2)
WeaponType.create(name: "Spear", range: 2, hands_required: 2)
WeaponType.create(name: "Short Spear", range: 1, hands_required: 1)
WeaponType.create(name: "Pole Weapon", range: 2, hands_required: 2)
WeaponType.create(name: "Thrown Weapon", range: 5, hands_required: 1)
WeaponType.create(name: "Bow", range: 10, hands_required: 2)

User.create(name: "Tom", password: "tomtom")
5.times do
  User.create(name: Faker::Name.name, password: "password")
end

users = User.all

20.times do
  users.sample.characters << Character.create(name: Faker::Cat.name)
end

characters = Character.all

CharacterClass.create(name: "Warrior", bonus: "Extra damage on attacks")
CharacterClass.create(name: "Soldier", bonus: "Extra defensive capabilities")
CharacterClass.create(name: "Ranger", bonus: "Increased attack and damage with ranged weapons")

Armor.create(name: "Full Plate", passive_defense_bonus: 15, energy_reduction: 10)
Armor.create(name: "Scale Mail", passive_defense_bonus: 10, energy_reduction: 5)
Armor.create(name: "Leather Armor", passive_defense_bonus: 5, energy_reduction: 0)

Weapon.create(name: "Long Sword", offense_bonus: 5, defense_bonus: 5, damage_bonus: 5, type_id: 2)
Weapon.create(name: "Javelin", offense_bonus: 3, defense_bonus: 2, damage_bonus: 7, type_id: 11)
Weapon.create(name: "Hand Axe", offense_bonus: 4, defense_bonus: 3, damage_bonus: 6, type_id: 4)
Weapon.create(name: "Flanged Mace", offense_bonus: 4, defense_bonus: 1, damage_bonus: 8, type_id: 6)
Weapon.create(name: "Boar Spear", offense_bonus: 7, defense_bonus: 7, damage_bonus: 3, type_id: 8)
Weapon.create(name: "Long Bow", offense_bonus: 3, defense_bonus: 0, damage_bonus: 4, type_id: 12)


characters.each do |character|
  character.classes << CharacterClass.all.sample
  character.weapons << Weapon.all.sample
  character.armors << Armor.all.sample
end

