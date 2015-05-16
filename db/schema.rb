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

ActiveRecord::Schema.define(version: 20150516223008) do

  create_table "coffee_shops", force: :cascade do |t|
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "address"
    t.string   "phone"
    t.string   "email"
    t.string   "data_input_method"
    t.string   "name"
  end

  create_table "order_profiles", force: :cascade do |t|
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "profile_name"
    t.integer  "coffee_shop_id"
    t.string   "coffee"
    t.string   "message"
    t.string   "phone"
    t.string   "delivery_address"
  end

  add_index "order_profiles", ["coffee_shop_id"], name: "index_order_profiles_on_coffee_shop_id"

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "date"
    t.string   "time"
    t.string   "delivery_status"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "username"
    t.string   "name"
    t.string   "password_digest"
    t.string   "allergy"
    t.integer  "order_profile_id"
  end

  add_index "users", ["order_profile_id"], name: "index_users_on_order_profile_id"

end
