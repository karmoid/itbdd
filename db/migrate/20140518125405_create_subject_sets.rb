class CreateSubjectSets < ActiveRecord::Migration
  def change
    create_table :subject_sets do |t|
      t.string :name
      t.text :note

      t.timestamps
    end
  end
end
