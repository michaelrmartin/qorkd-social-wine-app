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

ActiveRecord::Schema[7.0].define(version: 2023_04_04_200341) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "origins", force: :cascade do |t|
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.text "description"
    t.integer "user_id"
    t.integer "wine_id"
    t.string "post_img_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "rating"
    t.index ["user_id"], name: "index_posts_on_user_id"
    t.index ["wine_id"], name: "index_posts_on_wine_id"
  end

  create_table "user_profiles", force: :cascade do |t|
    t.string "name"
    t.string "user_img_url"
    t.text "bio"
    t.string "phone"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_posts_on_email", unique: true
    t.index ["username"], name: "index_posts_on_username", unique: true
  end

  create_table "wines", force: :cascade do |t|
    t.string "name"
    t.string "blend"
    t.decimal "price", precision: 5, scale: 2
    t.integer "origin_id"
    t.string "style"
    t.string "photo_url"
    t.boolean "vegan"
    t.boolean "sparkling"
    t.text "description"
    t.string "color"
    t.string "sweet"
    t.boolean "organic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_wines_on_name", unique: true
  end

end
