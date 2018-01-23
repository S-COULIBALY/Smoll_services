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

ActiveRecord::Schema.define(version: 20180119145209) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "locations", force: :cascade do |t|
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.string "floor_number"
    t.boolean "elevator"
    t.boolean "furniture_elevator"
    t.integer "portage_distance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "relocation_id"
    t.index ["relocation_id"], name: "index_locations_on_relocation_id"
  end

  create_table "options", force: :cascade do |t|
    t.boolean "packaging"
    t.boolean "disassembly"
    t.boolean "assembly"
    t.boolean "supplies_delivery"
    t.integer "american_fridge"
    t.integer "heavy_objects"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relocations", force: :cascade do |t|
    t.date "date"
    t.float "volume"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "departure_id"
    t.bigint "arrival_id"
    t.index ["arrival_id"], name: "index_relocations_on_arrival_id"
    t.index ["departure_id"], name: "index_relocations_on_departure_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "locations", "relocations"
  add_foreign_key "relocations", "locations", column: "arrival_id"
  add_foreign_key "relocations", "locations", column: "departure_id"
end
