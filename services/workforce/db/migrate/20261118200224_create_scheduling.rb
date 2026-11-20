class CreateScheduling < ActiveRecord::Migration[8.1]
  def change
    create_table "shift_breaks", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
      t.uuid "workspace_id", null: false
      t.uuid "shift_id", null: false
      t.datetime "starts_at", null: false
      t.datetime "ends_at", null: false
      t.string "kind", default: "rest", null: false
      t.boolean "paid", default: false, null: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end

    create_table "shifts", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
      t.uuid "worksapce_id", null: false
      t.uuid "member_id", null: false
      t.date "starts_on", null: false
      t.datetime "starts_at", null: false
      t.datetime "ends_at", null: false
      t.string "status", default: "schedules", null: false
      t.decimal "early_leave_penalty_hours", precision: 10, scale: 2, default: "0.0", null: false
      t.integer "lock_version", default: 0, null: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index [ "workspace_id", "member_id", "starts_on" ], name: "one_shift_per_day", unique: true
      t.check_constraint "ends_at > starts_at", name: "shift_time_order"
    end
  end
end
