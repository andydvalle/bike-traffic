class CreateBikeTrails < ActiveRecord::Migration[6.0]
  def change
    create_table :bike_trails do |t|
      t.string :name
      t.integer :miles
      t.string :trail_type
      t.integer :bike_trails_counters_id

      t.timestamps
    end
  end
end
