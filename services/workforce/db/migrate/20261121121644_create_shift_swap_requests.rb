class CreateShiftSwapRequests < ActiveRecord::Migration[8.1]
  def change
    create_table :shift_swap_requests, id: :uuid do |t|
      t.uuid :shift_id
      t.uuid :replacement_shift_id
      t.uuid :requester_id
      t.uuid :replacement_member_id
      t.integer :shift_version
      t.integer :replacement_shift_version
      t.text :reason
      t.integer :status
      t.uuid :decided_by
      t.timestamp :decided_at

      t.timestamps
    end
  end
end
