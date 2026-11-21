class CreateScheduleApplications < ActiveRecord::Migration[8.1]
  def change
    create_table :schedule_applications, id: :uuid do |t|
      t.uuid :schedule_template_version_id
      t.uuid :schedule_id
      t.date :anchor_date
      t.date :period_start
      t.date :period_end
      t.jsonb :member_ids_snapshot
      t.uuid :requested_by

      t.timestamps
    end
  end
end
