class CreateStars < ActiveRecord::Migration[5.0]
  def change
    create_table :stars do |t|
      t.integer :x
      t.integer :y
      t.integer :constellation_id

      t.timestamps
    end
  end
end
