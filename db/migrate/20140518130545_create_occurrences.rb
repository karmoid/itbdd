class CreateOccurrences < ActiveRecord::Migration
  def change
    create_table :occurrences do |t|
      t.string :title
      t.text :note
      t.timestamp :raised_at
      t.boolean :active
      t.integer :subject_id

      t.timestamps
    end
  end
end
