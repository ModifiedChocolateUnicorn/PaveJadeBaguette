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

ActiveRecord::Schema.define(version: 20180209184502) do

  create_table "accessories", force: :cascade do |t|
    t.integer "design_id"
    t.integer "material_id"
    t.integer "locking_system_id"
    t.integer "brand_id"
    t.string "accessory_size"
    t.integer "anodizing_id"
    t.string "gemstones_ids"
    t.integer "user_id"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["anodizing_id"], name: "index_accessories_on_anodizing_id"
    t.index ["brand_id"], name: "index_accessories_on_brand_id"
    t.index ["design_id"], name: "index_accessories_on_design_id"
    t.index ["locking_system_id"], name: "index_accessories_on_locking_system_id"
    t.index ["material_id"], name: "index_accessories_on_material_id"
    t.index ["user_id"], name: "index_accessories_on_user_id"
  end

  create_table "anodizings", force: :cascade do |t|
    t.string "name"
    t.integer "voltage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bases", force: :cascade do |t|
    t.integer "material_id"
    t.integer "locking_system_id"
    t.integer "brand_id"
    t.integer "size_id"
    t.integer "anodizing_id"
    t.integer "user_id"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["anodizing_id"], name: "index_bases_on_anodizing_id"
    t.index ["brand_id"], name: "index_bases_on_brand_id"
    t.index ["locking_system_id"], name: "index_bases_on_locking_system_id"
    t.index ["material_id"], name: "index_bases_on_material_id"
    t.index ["size_id"], name: "index_bases_on_size_id"
    t.index ["user_id"], name: "index_bases_on_user_id"
  end

  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.integer "launch_year"
    t.text "brand_desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cuts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "designs", force: :cascade do |t|
    t.string "name"
    t.integer "brand_id"
    t.integer "core_number"
    t.integer "accent_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_designs_on_brand_id"
  end

  create_table "gemstones", force: :cascade do |t|
    t.string "name"
    t.integer "nature_id"
    t.integer "brand_id"
    t.integer "cut_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_gemstones_on_brand_id"
    t.index ["cut_id"], name: "index_gemstones_on_cut_id"
    t.index ["nature_id"], name: "index_gemstones_on_nature_id"
  end

  create_table "jewels", force: :cascade do |t|
    t.integer "design_id"
    t.integer "material_id"
    t.integer "locking_system_id"
    t.integer "brand_id"
    t.integer "size_id"
    t.integer "anodizing_id"
    t.string "gemstones_ids"
    t.integer "user_id"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["anodizing_id"], name: "index_jewels_on_anodizing_id"
    t.index ["brand_id"], name: "index_jewels_on_brand_id"
    t.index ["design_id"], name: "index_jewels_on_design_id"
    t.index ["locking_system_id"], name: "index_jewels_on_locking_system_id"
    t.index ["material_id"], name: "index_jewels_on_material_id"
    t.index ["size_id"], name: "index_jewels_on_size_id"
    t.index ["user_id"], name: "index_jewels_on_user_id"
  end

  create_table "locking_systems", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "materials", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "natures", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sizes", force: :cascade do |t|
    t.integer "thickness"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "pwd"
    t.string "email"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
