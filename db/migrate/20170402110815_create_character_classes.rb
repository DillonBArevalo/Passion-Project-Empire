class CreateCharacterClasses < ActiveRecord::Migration
  def change
    create_table :character_classes do |t|
      t.string :name
      t.text :bonus

      t.timestamps
    end
  end
end
