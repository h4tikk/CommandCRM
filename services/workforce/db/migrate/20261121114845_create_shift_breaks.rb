class CreateShiftBreaks < ActiveRecord::Migration[8.1]
  def change
    create_table :shift_breaks, id: :uuid do |t|
      t.uuid :shift_id, null: false
      t.datetime :starts_at
      t.datetime :ends_at
      t.boolean :paid
      t.integer :kind

      t.timestamps
    end
  end
end
