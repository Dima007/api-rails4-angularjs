class CreateTherapists < ActiveRecord::Migration
  def change
    create_table :therapists do |t|
      t.string   "first_name"
      t.string   "last_name"
      t.string   "email"
      t.string   "time_zone"
      t.string   "password_digest"
      t.string   "skype_username"
      t.string   "title"
      t.datetime "created_at",                         null: false
      t.datetime "updated_at",                         null: false
      t.string   "photo_file_name"
      t.string   "photo_content_type"
      t.integer  "photo_file_size"
      t.datetime "photo_updated_at"
      t.text     "education"
      t.text     "approach"
      t.text     "about_me"
      t.string   "slug"
      t.text     "expertise"
      t.string   "password_salt"
      t.boolean  "is_destroyed",       default: false
      t.boolean  "hidden",             default: false
      t.string   "video_url"
      t.string   "firehost_chat_id"
      t.datetime "online_at"
      t.integer  "position"
    end
  end
end
