class DeleteTutorFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :tutor_id
  end
end
