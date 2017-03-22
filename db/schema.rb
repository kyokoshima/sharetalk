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


ActiveRecord::Schema.define(version: 20170321145901) do


  create_table "costs", force: :cascade do |t|
    t.string   "subject"
    t.integer  "cost"
    t.text     "detail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "expense_id"
  end

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.datetime "date"
    t.string   "place"
    t.text     "detail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "expense_users", force: :cascade do |t|
    t.integer  "expense_id"
    t.integer  "user_id"
    t.integer  "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["expense_id", "user_id"], name: "index_expense_users_on_expense_id_and_user_id"
  end

  create_table "expenses", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "expenses_users", id: false, force: :cascade do |t|
    t.integer "expense_id", null: false
    t.integer "user_id",    null: false
    t.index ["expense_id"], name: "index_expenses_users_on_expense_id"
    t.index ["user_id"], name: "index_expenses_users_on_user_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.text     "detail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "timeline_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "message_group_users", id: false, force: :cascade do |t|
    t.integer "message_group_id"
    t.integer "user_id"
    t.index ["message_group_id"], name: "index_message_group_users_on_message_group_id"
    t.index ["user_id"], name: "index_message_group_users_on_user_id"
  end

  create_table "message_groups", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "content"
    t.integer  "message_group_id"

    t.integer  "user_id"
    t.index ["user_id"], name: "index_messages_on_user_id"


  create_table "profiles", force: :cascade do |t|
    t.string   "image"
    t.string   "hobby"
    t.datetime "birthday"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "name"
    t.integer  "user_id"
    t.text     "introduce"
  end

  create_table "read_marks", force: :cascade do |t|
    t.string   "readable_type", null: false
    t.integer  "readable_id"
    t.string   "reader_type",   null: false
    t.integer  "reader_id"
    t.datetime "timestamp"
    t.index ["reader_id", "reader_type", "readable_type", "readable_id"], name: "read_marks_reader_readable_index", unique: true
  end

  create_table "replies", force: :cascade do |t|
    t.text     "comment"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.integer  "timeline_id"
    t.index ["timeline_id"], name: "index_replies_on_timeline_id"
  end

  create_table "read_marks", force: :cascade do |t|
    t.string   "readable_type", null: false
    t.integer  "readable_id"
    t.string   "reader_type",   null: false
    t.integer  "reader_id"
    t.datetime "timestamp"
    t.index ["reader_id", "reader_type", "readable_type", "readable_id"], name: "read_marks_reader_readable_index", unique: true
  end

  create_table "timelines", force: :cascade do |t|
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "turn_detail_users", force: :cascade do |t|
    t.integer  "turn_detail_id"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "turn_details", force: :cascade do |t|
    t.string   "when"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "turn_id"
  end

  create_table "turns", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_groups", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "name"
    t.boolean  "on",                     default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
