class CreateArmors < ActiveRecord::Migration
  def change
    create_table :armors do |t|
      t.string :name
      t.integer :passive_defense_bonus
      t.integer :energy_reduction

      t.timestamps
    end
  end
end
