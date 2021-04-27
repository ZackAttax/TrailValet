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

ActiveRecord::Schema.define(version: 2021_04_27_181941) do

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.integer "user_id", null: false
    t.integer "maintenance_feature_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["maintenance_feature_id"], name: "index_comments_on_maintenance_feature_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "maintenance_features", force: :cascade do |t|
    t.string "location"
    t.string "issue"
    t.string "tools_needed"
    t.integer "trail_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["trail_id"], name: "index_maintenance_features_on_trail_id"
    t.index ["user_id"], name: "index_maintenance_features_on_user_id"
  end

  create_table "tools", force: :cascade do |t|
    t.string "name"
    t.string "use"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_tools_on_user_id"
  end

  create_table "trails", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "tools"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image"
    t.string "uid"
  end

  add_foreign_key "comments", "maintenance_features"
  add_foreign_key "comments", "users"
  add_foreign_key "maintenance_features", "trails"
  add_foreign_key "maintenance_features", "users"
  add_foreign_key "tools", "users"
end
