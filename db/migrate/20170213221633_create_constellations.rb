class CreateConstellations < ActiveRecord::Migration[5.0]
  def change
    create_table :constellations do |t|
      t.string :name
      t.text :stars, array: true, default: []
      t.integer :user_id

      t.timestamps
    end
  end
end
