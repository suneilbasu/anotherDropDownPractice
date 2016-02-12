class CreateTutors < ActiveRecord::Migration
  def change
    create_table :tutors do |t|
      t.string :name
      t.string :form, :default => '7M2'

      t.timestamps null: false
    end
  end
end
