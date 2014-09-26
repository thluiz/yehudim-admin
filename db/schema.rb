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

ActiveRecord::Schema.define(version: 20140731061934) do

  create_table "episodes", force: true do |t|
    t.string   "title"
    t.string   "identifier"
    t.text     "description"
    t.integer  "tvshow_id"
    t.datetime "publication"
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "rabbi"
    t.boolean  "spotlight"
  end

  create_table "tvshows", force: true do |t|
    t.string   "name"
    t.string   "identifier"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "featured"
    t.integer  "order"
  end

  create_table "videos", force: true do |t|
    t.integer  "episode_id"
    t.string   "identifier"
    t.string   "title"
    t.text     "description"
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "amazon_identifier"
  end

end
