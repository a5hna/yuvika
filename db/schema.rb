# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_26_115608) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favourites", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "outfit_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["outfit_id"], name: "index_favourites_on_outfit_id"
    t.index ["user_id"], name: "index_favourites_on_user_id"
  end

  create_table "images", force: :cascade do |t|
    t.bigint "outfit_id", null: false
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["outfit_id"], name: "index_images_on_outfit_id"
  end

  create_table "order_items", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.bigint "order_id", null: false
    t.bigint "outfit_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["order_id"], name: "index_order_items_on_order_id"
    t.index ["outfit_id"], name: "index_order_items_on_outfit_id"
  end

  create_table "orders", force: :cascade do |t|
    t.date "date"
    t.decimal "total_price"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "outfits", force: :cascade do |t|
    t.string "title"
    t.decimal "price"
    t.text "product_details"
    t.string "size"
    t.string "style"
    t.string "occassion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.string "comment"
    t.bigint "outfit_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["outfit_id"], name: "index_reviews_on_outfit_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wardrobe_items", force: :cascade do |t|
    t.bigint "outfit_id", null: false
    t.date "start_date"
    t.date "end_date"
    t.bigint "wardrobe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["outfit_id"], name: "index_wardrobe_items_on_outfit_id"
    t.index ["wardrobe_id"], name: "index_wardrobe_items_on_wardrobe_id"
  end

  create_table "wardrobes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_wardrobes_on_user_id"
  end

  add_foreign_key "favourites", "outfits"
  add_foreign_key "favourites", "users"
  add_foreign_key "images", "outfits"
  add_foreign_key "order_items", "orders"
  add_foreign_key "order_items", "outfits"
  add_foreign_key "orders", "users"
  add_foreign_key "reviews", "outfits"
  add_foreign_key "reviews", "users"
  add_foreign_key "wardrobe_items", "outfits"
  add_foreign_key "wardrobe_items", "wardrobes"
  add_foreign_key "wardrobes", "users"
end
