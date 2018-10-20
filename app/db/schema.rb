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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2018_10_20_143146) do
=======
ActiveRecord::Schema.define(version: 2018_10_20_114354) do
>>>>>>> d90a7bb14439718e87e456c4809aa205ed49877f

  create_table "chats", force: :cascade do |t|
    t.text "message"
    t.string "username"
    t.string "mentor_id"
    t.string "mentee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "sender_id"
  end

  create_table "global_chats", force: :cascade do |t|
    t.text "message"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.integer "id_relationship"
    t.integer "id_sender"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.integer "id_mentor"
    t.integer "id_mentee"
    t.integer "b_valid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "bio"
    t.string "phone"
    t.string "city"
    t.string "jurisdiction"
    t.string "country"
    t.string "time_zone"
    t.string "languages"
    t.integer "prefer_phone"
    t.integer "prefer_email"
    t.integer "prefer_skype"
    t.integer "prefer_google_hangout"
    t.integer "prefer_facebook"
    t.integer "prefer_whatsapp"
    t.integer "prefer_viber"
    t.integer "refugees_sponsored"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "is_mentor"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
