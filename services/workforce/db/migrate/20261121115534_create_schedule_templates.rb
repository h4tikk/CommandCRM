class CreateScheduleTemplates < ActiveRecord::Migration[8.1]
  def change
    create_table :schedule_templates, id: :uuid do |t|
      t.string :name
      t.integer :status

      t.timestamps
    end
  end
end
