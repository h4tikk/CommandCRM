class CreateSchedules < ActiveRecord::Migration[8.1]
  def change
    create_table :schedules do |t|
      t.uuid :department_id
      t.date :period_start
      t.date :period_end
      t.string :timezone
      t.integer :status
      t.integer :revision
      t.uuid :published_by

      t.timestamps
    end
  end
end
