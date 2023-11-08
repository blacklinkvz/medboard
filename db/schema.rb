# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2023_11_07_010356) do
  create_table "bloodtypes", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.string "email"
    t.bigint "country_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_contacts_on_country_id"
    t.index ["user_id"], name: "index_contacts_on_user_id"
  end

  create_table "continents", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "alpha3_code"
    t.bigint "language_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["language_id"], name: "index_countries_on_language_id"
  end

  create_table "destinies", charset: "utf8mb4", force: :cascade do |t|
    t.date "start_date"
    t.date "finish_date"
    t.bigint "travel_id", null: false
    t.bigint "country_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_destinies_on_country_id"
    t.index ["travel_id"], name: "index_destinies_on_travel_id"
  end

  create_table "diseases", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diseases_posts", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.bigint "post_id", null: false
    t.bigint "disease_id", null: false
  end

  create_table "languages", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medicaments", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "compound"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medicaments_posts", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.bigint "post_id", null: false
    t.bigint "medicament_id", null: false
  end

  create_table "phones", charset: "utf8mb4", force: :cascade do |t|
    t.integer "type"
    t.integer "number"
    t.bigint "user_id"
    t.bigint "contact_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_id"], name: "index_phones_on_contact_id"
    t.index ["user_id"], name: "index_phones_on_user_id"
  end

  create_table "posts", charset: "utf8mb4", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "travels", charset: "utf8mb4", force: :cascade do |t|
    t.date "start_date"
    t.date "finish_date"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_travels_on_user_id"
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "s_name"
    t.string "lastname"
    t.string "s_lastname"
    t.string "rut"
    t.string "email"
    t.string "password"
    t.string "passport"
    t.bigint "bloodtype_id", null: false
    t.bigint "country_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bloodtype_id"], name: "index_users_on_bloodtype_id"
    t.index ["country_id"], name: "index_users_on_country_id"
  end

  add_foreign_key "contacts", "countries"
  add_foreign_key "contacts", "users"
  add_foreign_key "countries", "languages"
  add_foreign_key "destinies", "countries"
  add_foreign_key "destinies", "travels"
  add_foreign_key "phones", "contacts"
  add_foreign_key "phones", "users"
  add_foreign_key "travels", "users"
  add_foreign_key "users", "bloodtypes"
  add_foreign_key "users", "countries"
end
