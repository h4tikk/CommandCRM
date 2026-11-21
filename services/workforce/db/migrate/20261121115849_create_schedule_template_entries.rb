class CreateScheduleTemplateEntries < ActiveRecord::Migration[8.1]
  def change
    create_table :schedule_template_entries, id: :uuid do |t|
      t.uuid :schedule_template_version_id, null: false
      t.integer :day_offset
      t.uuid :shift_template_version_id
      t.integer :position

      t.timestamps
    end
  end
end
