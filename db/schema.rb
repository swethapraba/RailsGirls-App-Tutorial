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

ActiveRecord::Schema.define(version: 20170117170739) do

  create_table "foods", force: :cascade do |t|
    t.string   "item"
    t.text     "category"
    t.string   "quantity"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "ideas", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "picture"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "serviceorglistings", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.string   "website"
    t.string   "phone"
    t.boolean  "nonperishables"
    t.boolean  "freshFoods"
    t.boolean  "refridgeratedFoods"
    t.boolean  "frozenFoods"
    t.boolean  "cookedFoods"
    t.text     "hours"
    t.text     "otherInformation"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "serviceorgs", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.string   "website"
    t.string   "phone"
    t.boolean  "nonperishables"
    t.boolean  "fresh"
    t.boolean  "refridgerated"
    t.boolean  "frozen"
    t.boolean  "cooked"
    t.text     "hours"
    t.text     "otherInfo"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
