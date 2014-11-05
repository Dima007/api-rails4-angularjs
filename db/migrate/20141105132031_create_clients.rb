class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string   "first_name"
      t.string   "last_name"
      t.string   "email"
      t.date     "birthday"
      t.string   "time_zone"
      t.string   "username"
      t.string   "password_digest"
      t.string   "skype_username"
      t.string   "register_token"
      t.datetime "created_at",                                  null: false
      t.datetime "updated_at",                                  null: false
      t.string   "photo_file_name"
      t.string   "photo_content_type"
      t.integer  "photo_file_size"
      t.datetime "photo_updated_at"
      t.string   "status",                   default: "Active"
      t.string   "password_token"
      t.string   "password_salt"
      t.integer  "plan_id"
      t.integer  "coupon_id"
      t.integer  "renewal_day"
      t.integer  "age"
      t.text     "mood"
      t.text     "find_us"
      t.text     "therapy_before"
      t.text     "current_situation"
      t.text     "hoping_from_session"
      t.boolean  "valid_billing_info",       default: true
      t.integer  "credit_balance"
      t.integer  "archived_balance"
      t.integer  "corrected_balance"
      t.integer  "current_balance",          default: 0
      t.datetime "first_instant_session_at"

    end
  end
end
