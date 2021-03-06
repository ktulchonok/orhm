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

ActiveRecord::Schema.define(version: 20160923065411) do

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.text     "text"
    t.integer  "topic_id"
    t.string   "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "articles", ["topic_id"], name: "index_articles_on_topic_id"

  create_table "clients", force: :cascade do |t|
    t.string   "email"
    t.string   "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.string   "age"
  end

  create_table "expositions", force: :cascade do |t|
    t.string   "title"
    t.text     "text"
    t.string   "address"
    t.time     "start_time"
    t.time     "end_time"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messengers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "content"
  end

  create_table "post_translations", force: :cascade do |t|
    t.integer  "post_id",    null: false
    t.string   "locale",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
    t.text     "text"
  end

  add_index "post_translations", ["locale"], name: "index_post_translations_on_locale"
  add_index "post_translations", ["post_id"], name: "index_post_translations_on_post_id"

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "text"
    t.string   "preview"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.string   "name"
    t.integer  "enter_adult"
    t.integer  "enter_child"
    t.integer  "excursion_adult"
    t.integer  "excursion_child"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "topics", force: :cascade do |t|
    t.string   "name"
    t.integer  "messenger_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "topics", ["messenger_id"], name: "index_topics_on_messenger_id"

  create_table "users", force: :cascade do |t|
    t.string   "login"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
