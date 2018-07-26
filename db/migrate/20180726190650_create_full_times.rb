class CreateFullTimes < ActiveRecord::Migration[5.1]
  def change
    create_table :full_times do |t|
      t.string :name
      t.date :start_date

      t.timestamps
    end
  end
end
