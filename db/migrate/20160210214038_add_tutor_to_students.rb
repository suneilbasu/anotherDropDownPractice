class AddTutorToStudents < ActiveRecord::Migration
  def change
    add_column :students, :tutor_id, :integer, :default => 1
  end
end
