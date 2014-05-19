class AddSubjectSetToSubject < ActiveRecord::Migration
  def change
    add_column :subjects, :subject_set_id, :integer
  end
end
