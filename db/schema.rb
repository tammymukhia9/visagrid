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

ActiveRecord::Schema.define(version: 2019_04_10_035321) do

  create_table "blogs", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.text "article"
    t.string "blog_img"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "country_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mainsearches", force: :cascade do |t|
    t.string "nationality"
    t.string "source"
    t.string "destination"
    t.string "visit_purpose"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "mem_first_name"
    t.string "mem_last_name"
    t.string "username"
    t.string "password"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "country_id"
    t.index ["country_id"], name: "index_members_on_country_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "country_id"
    t.index ["country_id"], name: "index_users_on_country_id"
  end

  create_table "visa_infos", force: :cascade do |t|
    t.text "visa_info"
    t.text "links"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "source_id"
    t.integer "destination_id"
    t.integer "nationality_id"
    t.integer "visit_purpose_id"
    t.boolean "required"
    t.index ["visit_purpose_id"], name: "index_visa_infos_on_visit_purpose_id"
  end

  create_table "visit_purposes", force: :cascade do |t|
    t.string "visit_name"
    t.text "visit_info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
