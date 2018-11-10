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

ActiveRecord::Schema.define(version: 20181031013716) do

  create_table "addresses", force: :cascade do |t|
    t.string "street_number", null: false
    t.string "street_name", null: false
    t.integer "zip_code", null: false
    t.string "city", null: false
    t.text "details", null: false
    t.integer "address_type", null: false
    t.decimal "longitude", null: false
    t.decimal "lattitude", null: false
    t.string "complete_address", null: false
    t.decimal "carrying_distance", null: false
    t.integer "floor_number", null: false
    t.boolean "elevator", null: false
    t.integer "elevator_capacity", null: false
    t.boolean "furniture_elevator", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relocations", force: :cascade do |t|
    t.integer "relocation_type", null: false
    t.integer "formula", null: false
    t.datetime "date", null: false
    t.decimal "volume", null: false
    t.decimal "distance", null: false
    t.integer "worker", null: false
    t.decimal "amount", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "storages", force: :cascade do |t|
    t.date "date", null: false
    t.decimal "weight", null: false
    t.decimal "volume", null: false
    t.decimal "distance", null: false
    t.decimal "carrying_distance", null: false
    t.integer "worker", null: false
    t.decimal "amount", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
