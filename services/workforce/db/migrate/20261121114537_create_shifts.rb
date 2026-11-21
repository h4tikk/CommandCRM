class CreateShifts < ActiveRecord::Migration[8.1]
  def change
    create_table :shifts, id: :uuid do |t|
      t.uuid :workspace_id, null: false
      t.uuid :member_id, null: false
      t.uuid :department_id
      t.uuid :schedule_id
      t.uuid :template_version_id
      t.date :starts_on, null: false
      t.datetime :starts_at, null: false
      t.datetime :ends_at, null: false
      t.string :timezone, null: false
      t.string :status, null: false
      t.timestamp :published_at
      t.timestamp :cancelled_at
      t.text :cancellation_reason
      t.decimal :lateness_penalty_hours, precision: 10, scale: 4
      t.decimal :early_leave_penalty_hours, precision: 10, scale: 4
      t.integer :lock_version, null: false

      t.timestamps
    end
  end
end
