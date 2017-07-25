class CreateCounters < ActiveRecord::Migration[5.1]
  def change
    create_table :counters do |t|
      t.references :terminal, foreign_key: true
      t.timestamp :datetime
      t.string :timezone
      t.string :latitude
      t.string :longitude
      t.integer :no_react
      t.integer :boarding
      t.integer :alighted
      t.integer :unknown

      t.timestamps
    end
  end
end
