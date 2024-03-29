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

ActiveRecord::Schema.define(version: 20131213043208) do

  create_table "items", force: true do |t|
    t.string   "title"
    t.text     "url"
    t.text     "image_url"
    t.integer  "quantity"
    t.integer  "starting_price_cents",    default: 0,     null: false
    t.string   "starting_price_currency", default: "USD", null: false
    t.string   "quality"
    t.string   "rarity"
    t.string   "item_type"
    t.string   "hero"
    t.string   "steam_class_id"
    t.string   "steam_instance_id"
    t.string   "steam_market_hash_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
