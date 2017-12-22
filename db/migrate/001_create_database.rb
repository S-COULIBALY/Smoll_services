class CreateDatabase < ActiveRecord::Migration[5.1]

	def self.up
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
	end

	def down
	end
end

