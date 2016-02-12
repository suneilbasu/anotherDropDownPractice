class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :fname
      t.string :sname
      t.string :tutor_id, :default => 0


      t.timestamps null: false
    end
    add_index :students, :tutor_id

  end
end
