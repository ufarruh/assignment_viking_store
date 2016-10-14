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

ActiveRecord::Schema.define(version: 20161014183409) do

  create_table "adresses", force: :cascade do |t|
    t.string   "street_name"
    t.integer  "city_id"
    t.integer  "state_id"
    t.integer  "zip_code_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["city_id"], name: "index_adresses_on_city_id"
    t.index ["state_id"], name: "index_adresses_on_state_id"
    t.index ["user_id"], name: "index_adresses_on_user_id"
    t.index ["zip_code_id"], name: "index_adresses_on_zip_code_id"
  end

  create_table "billings", force: :cascade do |t|
    t.integer  "adress_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["adress_id"], name: "index_billings_on_adress_id"
    t.index ["user_id"], name: "index_billings_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "city_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phones", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_phones_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.decimal  "price"
    t.integer  "sku_number"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "category_id"
    t.index ["category_id"], name: "index_products_on_category_id"
  end

  create_table "shopping_carts", force: :cascade do |t|
    t.string   "produc_references"
    t.integer  "user_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["user_id"], name: "index_shopping_carts_on_user_id"
  end

  create_table "states", force: :cascade do |t|
    t.string   "state_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "email"
  end

  create_table "zip_codes", force: :cascade do |t|
    t.integer  "zip_code_number"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
