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

ActiveRecord::Schema.define(version: 2019_05_23_055603) do

  create_table "affiliates", force: :cascade do |t|
    t.string "affiliateid", null: false
    t.string "password", null: false
    t.string "name", null: false
    t.string "address", null: false
    t.string "phone", null: false
    t.string "picture"
    t.string "website"
    t.string "sns"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movements", force: :cascade do |t|
    t.string "exercise"
    t.string "equipment"
    t.string "description"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "userid", null: false
    t.string "password", null: false
    t.string "name", null: false
    t.integer "affiliate_id"
    t.string "phone"
    t.string "picture"
    t.string "gender"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["affiliate_id"], name: "index_users_on_affiliate_id"
  end

  create_table "wods", force: :cascade do |t|
    t.string "name"
    t.string "score"
    t.string "score_set"
    t.string "rep"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "movements"
    t.string "routine"
  end

end
