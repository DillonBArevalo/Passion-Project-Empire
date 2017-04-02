class CreateWeapons < ActiveRecord::Migration
  def change
    create_table :weapons do |t|
      t.string :name
      t.integer :offense_bonus
      t.integer :damage_bonus
      t.integer :defense_bonus
      t.ingeger :weapon_type_id

      t.timestamps
    end
  end
end
