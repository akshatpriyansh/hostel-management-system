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

ActiveRecord::Schema.define(version: 20190109201425) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buildings", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.integer  "max_strength"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "hostellers", force: :cascade do |t|
    t.string   "hosteller_name"
    t.string   "hosteller_number"
    t.string   "hosteller_address"
    t.string   "father_name"
    t.string   "father_occupation"
    t.string   "father_number"
    t.string   "mother_name"
    t.string   "mother_number"
    t.string   "block"
    t.integer  "room_number"
    t.integer  "building_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "form_file_name"
    t.string   "form_content_type"
    t.integer  "form_file_size",    limit: 8
    t.datetime "form_updated_at"
  end

end
