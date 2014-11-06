# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141106103704) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "administrators", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "time_zone"
    t.string   "remember_token"
  end

  add_index "administrators", ["remember_token"], name: "index_administrators_on_remember_token", using: :btree

  create_table "clients", force: true do |t|
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

  create_table "relationships", force: true do |t|
    t.integer  "therapist_id"
    t.integer  "client_id"
    t.datetime "relationship_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationships", ["client_id"], name: "index_relationships_on_client_id", using: :btree
  add_index "relationships", ["therapist_id"], name: "index_relationships_on_therapist_id", using: :btree

  create_table "therapists", force: true do |t|
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
