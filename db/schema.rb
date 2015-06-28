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

ActiveRecord::Schema.define(version: 20150626203844) do

  create_table "floater_types", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "floaters", force: :cascade do |t|
    t.integer  "floater_type_id", limit: 4
    t.string   "pair_id",         limit: 255
    t.float    "value",           limit: 24
    t.datetime "start_at"
    t.datetime "end_at"
    t.integer  "durability",      limit: 4
    t.boolean  "active",          limit: 1
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "rss_feeds", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.string   "link",        limit: 255
    t.text     "description", limit: 65535
    t.string   "author",      limit: 255
    t.string   "category",    limit: 255
    t.text     "comments",    limit: 65535
    t.text     "enclosure",   limit: 65535
    t.string   "guid",        limit: 255
    t.datetime "pubdate"
    t.string   "source",      limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "xchanges", force: :cascade do |t|
    t.string   "pair_id",    limit: 255
    t.string   "name",       limit: 255
    t.float    "rate",       limit: 24
    t.date     "date"
    t.time     "time"
    t.float    "ask",        limit: 24
    t.float    "bid",        limit: 24
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
