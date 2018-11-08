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

ActiveRecord::Schema.define(version: 2018_11_08_154130) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignment_instrument_sections", force: :cascade do |t|
    t.bigint "assignment_id", null: false
    t.bigint "instrument_section_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assignment_id"], name: "index_assignment_instrument_sections_on_assignment_id"
    t.index ["instrument_section_id"], name: "index_assignment_instrument_sections_on_instrument_section_id"
  end

  create_table "assignments", force: :cascade do |t|
    t.string "name", null: false
    t.text "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chair_instrument_sections", force: :cascade do |t|
    t.bigint "chair_id"
    t.bigint "instrument_section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chair_id"], name: "index_chair_instrument_sections_on_chair_id"
    t.index ["instrument_section_id"], name: "index_chair_instrument_sections_on_instrument_section_id"
  end

  create_table "chairs", force: :cascade do |t|
    t.string "ordinal_name", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "instrument_sections", force: :cascade do |t|
    t.string "instrument", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teacher_students", force: :cascade do |t|
    t.bigint "teacher_id", null: false
    t.bigint "student_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_teacher_students_on_student_id"
    t.index ["teacher_id"], name: "index_teacher_students_on_teacher_id"
  end

  create_table "user_assignments", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "assignment_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assignment_id"], name: "index_user_assignments_on_assignment_id"
    t.index ["user_id"], name: "index_user_assignments_on_user_id"
  end

  create_table "user_instrument_sections", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "instrument_section_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["instrument_section_id"], name: "index_user_instrument_sections_on_instrument_section_id"
    t.index ["user_id"], name: "index_user_instrument_sections_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "school_name", null: false
    t.string "city", null: false
    t.string "position", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
