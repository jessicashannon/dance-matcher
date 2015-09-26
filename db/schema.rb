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

ActiveRecord::Schema.define(version: 20150926211027) do

  create_table "arrangements", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guests", force: :cascade do |t|
    t.string   "smokes"
    t.string   "dogs"
    t.string   "cats"
    t.string   "bedding"
    t.string   "towels"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "hosts", force: :cascade do |t|
    t.string   "smokes"
    t.string   "dogs"
    t.string   "cats"
    t.string   "bedding"
    t.string   "towels"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.integer  "capacity"
  end

  create_table "match_arrangements", force: :cascade do |t|
    t.integer "arrangement_id"
    t.integer "match_id"
  end

  add_index "match_arrangements", ["arrangement_id"], name: "index_match_arrangements_on_arrangement_id"
  add_index "match_arrangements", ["match_id"], name: "index_match_arrangements_on_match_id"

  create_table "matches", force: :cascade do |t|
    t.integer  "host_id"
    t.integer  "guest_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "matches", ["guest_id"], name: "index_matches_on_guest_id"
  add_index "matches", ["host_id"], name: "index_matches_on_host_id"

end
