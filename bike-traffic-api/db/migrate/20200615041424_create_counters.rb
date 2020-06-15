class CreateCounters < ActiveRecord::Migration[6.0]
  def change
    create_table :counters do |t|
      t.datetime, :date_time
      t.integer :total_trips
      t.integer :direction_1
      t.integer :direction_2
      t.integer :bike_trails_counters_id
      t.integer :location_id

      t.timestamps
    end
  end
end
