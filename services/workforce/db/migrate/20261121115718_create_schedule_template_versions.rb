class CreateScheduleTemplateVersions < ActiveRecord::Migration[8.1]
  def change
    create_table :schedule_template_versions do |t|
      t.uuid :schedule_template_id
      t.integer :version
      t.integer :status
      t.integer :cycle_days
      t.string :timezone
      t.date :effective_from
      t.date :effective_to

      t.timestamps
    end
  end
end
