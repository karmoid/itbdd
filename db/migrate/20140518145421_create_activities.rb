class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.text :note
      t.timestamp :start_at
      t.time :time_elapsed
      t.integer :occurrence_id

      t.timestamps
    end
  end
end
