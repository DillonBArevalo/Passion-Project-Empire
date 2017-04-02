class CreateCharactersClasses < ActiveRecord::Migration
  def change
    create_table :characters_classes do |t|
      t.integer :character_id
      t.integer :class_id

      t.timestamps
    end
  end
end
