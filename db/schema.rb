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

ActiveRecord::Schema.define(version: 2019_06_18_021004) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "calendars", force: :cascade do |t|
    t.integer "years"
    t.integer "months"
    t.integer "date"
    t.bigint "challenge_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "clicked", default: false
    t.index ["challenge_id"], name: "index_calendars_on_challenge_id"
  end

  create_table "challenges", force: :cascade do |t|
    t.string "name"
    t.integer "daysLeft"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "dayCreated"
    t.string "lastDay"
    t.boolean "clicked"
    t.string "timeClicked"
    t.string "timeToClick"
    t.index ["user_id"], name: "index_challenges_on_user_id"
  end

  create_table "lockers", force: :cascade do |t|
    t.integer "currency"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_lockers_on_user_id"
  end

  create_table "minis", force: :cascade do |t|
    t.integer "level"
    t.string "speciality"
    t.string "born"
    t.boolean "graduated"
    t.integer "age"
    t.integer "challenge_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "challenges", "users"
end
