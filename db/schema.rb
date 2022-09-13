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

ActiveRecord::Schema[7.0].define(version: 2022_09_13_044750) do
  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.boolean "is_featured"
    t.datetime "published"
    t.integer "employee_id", null: false
    t.integer "company_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_articles_on_company_id"
    t.index ["employee_id"], name: "index_articles_on_employee_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.boolean "active"
    t.integer "region_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_companies_on_region_id"
  end

  create_table "employee_roles", force: :cascade do |t|
    t.integer "employee_id", null: false
    t.integer "role_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_employee_roles_on_employee_id"
    t.index ["role_id"], name: "index_employee_roles_on_role_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.text "address"
    t.string "email"
    t.string "password"
    t.integer "company_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_employees_on_company_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "status"
    t.decimal "budget"
    t.string "country"
    t.integer "progress"
    t.integer "company_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_projects_on_company_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.json "settings"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "code"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "videos", force: :cascade do |t|
    t.string "title"
    t.string "youtube_id"
    t.integer "article_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_videos_on_article_id"
  end

  add_foreign_key "articles", "companies"
  add_foreign_key "articles", "employees"
  add_foreign_key "companies", "regions"
  add_foreign_key "employee_roles", "employees"
  add_foreign_key "employee_roles", "roles"
  add_foreign_key "employees", "companies"
  add_foreign_key "projects", "companies"
  add_foreign_key "videos", "articles"
end
