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

ActiveRecord::Schema.define(version: 2019_03_26_002719) do

  create_table "continents", force: :cascade do |t|
    t.integer "continent_id"
    t.string "continent_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "country_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guest_users", force: :cascade do |t|
    t.integer "guest_user_id"
    t.integer "user_id"
    t.integer "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "email"
    t.string "contact_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_logs", force: :cascade do |t|
    t.integer "log_id"
    t.integer "user_id"
    t.integer "visa_info_id"
    t.datetime "logged_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.integer "country_id"
    t.index ["country_id"], name: "index_visa_infos_on_country_id"
  end

  create_table "visit_purposes", force: :cascade do |t|
    t.string "visit_name"
    t.text "visit_info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
