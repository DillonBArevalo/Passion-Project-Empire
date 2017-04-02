class CreateCharactersClasses < ActiveRecord::Migration
  def change
    create_table :characters_classes do |t|
      t.integer :character_id
      t.integer :character_class_id

      t.timestamps
    end
  end
end
