class CreateJoinTableBikeTrailsCounters < ActiveRecord::Migration[6.0]
  def change
    create_join_table :bike_trails, :counters do |t|
      t.index :bike_trail_id
      t.index :counter_id
    end
  end
end
