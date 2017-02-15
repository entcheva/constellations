class ChangeStarsToStarArray < ActiveRecord::Migration[5.0]
  def change
    rename_column :constellations, :stars, :stars_array
  end
end
