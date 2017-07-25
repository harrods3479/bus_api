class CreateTerminals < ActiveRecord::Migration[5.1]
  def change
    create_table :terminals do |t|
      t.string :name
      t.text :notes

      t.timestamps
    end
  end
end
