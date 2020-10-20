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

ActiveRecord::Schema.define(version: 2020_09_03_002752) do

  create_table "assessments", force: :cascade do |t|
    t.boolean "participating"
    t.string "comment"
    t.integer "class_period_id", null: false
    t.integer "student_id", null: false
    t.integer "cycle"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["class_period_id"], name: "index_assessments_on_class_period_id"
    t.index ["student_id"], name: "index_assessments_on_student_id"
  end

  create_table "class_periods", force: :cascade do |t|
    t.string "subject"
    t.integer "period"
    t.integer "level"
    t.integer "teacher_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["teacher_id"], name: "index_class_periods_on_teacher_id"
  end

  create_table "registrations", force: :cascade do |t|
    t.integer "class_period_id", null: false
    t.integer "student_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["class_period_id"], name: "index_registrations_on_class_period_id"
    t.index ["student_id"], name: "index_registrations_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "assessments", "class_periods"
  add_foreign_key "assessments", "students"
  add_foreign_key "class_periods", "teachers"
  add_foreign_key "registrations", "class_periods"
  add_foreign_key "registrations", "students"
end
