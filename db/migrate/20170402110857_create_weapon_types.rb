class CreateWeaponTypes < ActiveRecord::Migration
  def change
    create_table :weapon_types do |t|
      t.string :name
      t.integer :range
      t.integer :hands_required

      t.timestamps
    end
  end
end
