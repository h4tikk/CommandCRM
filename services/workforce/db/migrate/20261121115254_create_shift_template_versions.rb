class CreateShiftTemplateVersions < ActiveRecord::Migration[8.1]
  def change
    create_table :shift_template_versions, id: :uuid do |t|
      t.uuid :shift_template_id
      t.integer :version
      t.integer :status
      t.time :start_time
      t.time :end_time
      t.integer :end_day_offset
      t.string :timezone
      t.date :effective_from
      t.date :effective_to
      t.uuid :published_by

      t.timestamps
    end
  end
end
