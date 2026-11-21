class CreateShiftTemplateBreaks < ActiveRecord::Migration[8.1]
  def change
    create_table :shift_template_breaks, id: :uuid do |t|
      t.uuid :shift_template_version_id
      t.integer :start_offset_minutes
      t.integer :duration_minutes
      t.boolean :paid
      t.integer :kind

      t.timestamps
    end
  end
end
