class CreateShiftTemplates < ActiveRecord::Migration[8.1]
  def change
    create_table :shift_templates, id: :uuid do |t|
      t.string :name
      t.integer :status
      t.uuid :create_by

      t.timestamps
    end
  end
end
