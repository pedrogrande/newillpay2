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

ActiveRecord::Schema.define(version: 20140226000322) do

  create_table "addresses", force: true do |t|
    t.string   "name"
    t.string   "address1"
    t.string   "address2"
    t.string   "suburb"
    t.string   "postcode"
    t.string   "state"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "shopper_profile_id"
  end

  add_index "addresses", ["shopper_profile_id"], name: "index_addresses_on_shopper_profile_id"

  create_table "offers", force: true do |t|
    t.integer  "shopper_profile_id"
    t.integer  "retailer_profile_id"
    t.string   "product_name"
    t.string   "url"
    t.text     "description"
    t.integer  "price"
    t.integer  "offer"
    t.datetime "expiry"
    t.integer  "fee"
    t.datetime "accepted"
    t.datetime "paid"
    t.datetime "sent"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
    t.integer  "expiry_days"
    t.datetime "rejected"
  end

  add_index "offers", ["retailer_profile_id"], name: "index_offers_on_retailer_profile_id"
  add_index "offers", ["shopper_profile_id"], name: "index_offers_on_shopper_profile_id"

  create_table "retailer_profiles", force: true do |t|
    t.integer  "user_id"
    t.string   "business_name",   null: false
    t.string   "website",         null: false
    t.string   "phone"
    t.string   "address1"
    t.string   "address2"
    t.string   "suburb"
    t.string   "postcode"
    t.string   "country"
    t.string   "paypal_username"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "retailer_profiles", ["user_id"], name: "index_retailer_profiles_on_user_id"

  create_table "roles", force: true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], name: "index_roles_on_name"

  create_table "shopper_profiles", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shopper_profiles", ["user_id"], name: "index_shopper_profiles_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "user_type"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "users_roles", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"

end
