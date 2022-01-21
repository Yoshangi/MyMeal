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

ActiveRecord::Schema.define(version: 2022_01_15_085905) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "foods", force: :cascade do |t|
    t.string "food_name"
    t.text "description"
    t.integer "calories"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "foods_meal_plans", id: false, force: :cascade do |t|
    t.bigint "meal_plan_id", null: false
    t.bigint "food_id", null: false
    t.index ["food_id", "meal_plan_id"], name: "index_foods_meal_plans_on_food_id_and_meal_plan_id"
    t.index ["meal_plan_id", "food_id"], name: "index_foods_meal_plans_on_meal_plan_id_and_food_id"
  end

  create_table "meal_plans", force: :cascade do |t|
    t.string "type"
    t.string "name"
    t.string "age_group"
    t.string "suitable_gender"
    t.boolean "suitable_for_diabetes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "meal_plans_users", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "meal_plan_id", null: false
    t.index ["meal_plan_id", "user_id"], name: "index_meal_plans_users_on_meal_plan_id_and_user_id"
    t.index ["user_id", "meal_plan_id"], name: "index_meal_plans_users_on_user_id_and_meal_plan_id"
  end

  create_table "payments", force: :cascade do |t|
    t.string "status"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "payments_users", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "payment_id", null: false
    t.index ["payment_id", "user_id"], name: "index_payments_users_on_payment_id_and_user_id"
    t.index ["user_id", "payment_id"], name: "index_payments_users_on_user_id_and_payment_id"
  end

  create_table "user_details", force: :cascade do |t|
    t.string "type"
    t.integer "age"
    t.string "gender"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_details_users", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "user_detail_id", null: false
    t.index ["user_detail_id", "user_id"], name: "index_user_details_users_on_user_detail_id_and_user_id"
    t.index ["user_id", "user_detail_id"], name: "index_user_details_users_on_user_id_and_user_detail_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: 6
    t.datetime "remember_created_at", precision: 6
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_w_schedules", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "w_schedule_id", null: false
    t.index ["user_id", "w_schedule_id"], name: "index_users_w_schedules_on_user_id_and_w_schedule_id"
    t.index ["w_schedule_id", "user_id"], name: "index_users_w_schedules_on_w_schedule_id_and_user_id"
  end

  create_table "w_schedules", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "age_group"
    t.string "suitable_gender"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
