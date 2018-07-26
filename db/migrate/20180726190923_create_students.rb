class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.references :part_time, foreign_key: true
      t.references :full_time, foreign_key: true
      t.string :fname
      t.string :lname
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
