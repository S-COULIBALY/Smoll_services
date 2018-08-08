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

ActiveRecord::Schema.define(version: 20180805215555) do

  create_table "adress_characteristics", force: :cascade do |t|
    t.integer "floor_number"
    t.boolean "elevator"
    t.integer "elevator_capacity"
    t.boolean "furniture_elevator"
    t.integer "furniture_elevator_capacity"
    t.decimal "carry_distance"
    t.integer "adress_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["adress_id"], name: "index_adress_characteristics_on_adress_id"
  end

  create_table "adresses", force: :cascade do |t|
    t.string "street_name"
    t.integer "postal_code"
    t.string "city"
    t.text "details"
    t.string "adress_type"
    t.decimal "longitude"
    t.decimal "lattitude"
    t.string "complete_adress"
    t.integer "relocation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["relocation_id"], name: "index_adresses_on_relocation_id"
  end

  create_table "relocations", force: :cascade do |t|
    t.datetime "date"
    t.decimal "volume"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
