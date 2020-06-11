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

ActiveRecord::Schema.define(version: 2020_06_07_111144) do

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_name"
    t.string "password_digest"
    t.integer "first"
    t.integer "second"
    t.integer "third"
    t.integer "fourth"
    t.string "first_1"
    t.string "first_2"
    t.string "first_3"
    t.string "first_4"
    t.string "first_5"
    t.string "first_6"
    t.string "first_7"
    t.string "first_8"
    t.string "first_9"
    t.string "first_10"
    t.string "first_11"
    t.string "first_12"
    t.string "first_13"
    t.string "first_14"
    t.string "first_15"
    t.string "first_16"
    t.string "first_17"
    t.string "first_18"
    t.string "first_19"
    t.string "first_20"
    t.string "first_21"
    t.string "first_22"
    t.string "first_23"
    t.string "first_24"
    t.string "first_25"
  end

end
