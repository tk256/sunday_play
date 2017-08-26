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

ActiveRecord::Schema.define(version: 20170826073005) do

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.text "note"
    t.string "telephone1"
    t.string "thelephone2"
    t.string "mail"
    t.string "name_kana"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.integer "organization_id"
    t.string "name", null: false
    t.string "name_kana", null: false
    t.string "telephone"
    t.text "address"
    t.text "note"
    t.integer "lock_version", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_people_on_organization_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "organization_id"
    t.integer "person_id"
    t.integer "room_id", null: false
    t.string "event_name", null: false
    t.date "date", null: false
    t.string "start_time", null: false
    t.string "end_time", null: false
    t.string "telephone"
    t.text "note"
    t.integer "status", default: 0, null: false
    t.integer "lock_version", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_reservations_on_organization_id"
    t.index ["person_id"], name: "index_reservations_on_person_id"
    t.index ["room_id"], name: "index_reservations_on_room_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.integer "building_id"
    t.string "name", null: false
    t.text "note"
    t.integer "time_type"
    t.integer "lock_version", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_rooms_on_building_id"
  end

end
