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

ActiveRecord::Schema.define(version: 2021_03_28_012755) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "messages", force: :cascade do |t|
    t.text "comment"
    t.bigint "teacher_id", null: false
    t.bigint "student_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_id"], name: "index_messages_on_student_id"
    t.index ["teacher_id"], name: "index_messages_on_teacher_id"
  end

  create_table "monthly_goals", force: :cascade do |t|
    t.text "goal"
    t.bigint "student_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_id"], name: "index_monthly_goals_on_student_id"
  end

  create_table "questions", force: :cascade do |t|
    t.text "message"
    t.string "image"
    t.bigint "student_id", null: false
    t.bigint "teacher_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_id"], name: "index_questions_on_student_id"
    t.index ["teacher_id"], name: "index_questions_on_teacher_id"
  end

  create_table "replies", force: :cascade do |t|
    t.text "message"
    t.string "student_or_teacher"
    t.bigint "student_id", null: false
    t.bigint "teacher_id", null: false
    t.bigint "question_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_id"], name: "index_replies_on_question_id"
    t.index ["student_id"], name: "index_replies_on_student_id"
    t.index ["teacher_id"], name: "index_replies_on_teacher_id"
  end

  create_table "school_choises", force: :cascade do |t|
    t.text "school_choise"
    t.bigint "student_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_id"], name: "index_school_choises_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "user_name", null: false
    t.string "email", null: false
    t.string "image"
    t.string "password_digest"
    t.bigint "teacher_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_students_on_email", unique: true
    t.index ["teacher_id"], name: "index_students_on_teacher_id"
  end

  create_table "study_records", force: :cascade do |t|
    t.time "study_time"
    t.string "study_text"
    t.text "comment"
    t.string "subject"
    t.bigint "student_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_id"], name: "index_study_records_on_student_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "user_name", null: false
    t.string "email", null: false
    t.string "image"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_teachers_on_email", unique: true
  end

  add_foreign_key "messages", "students"
  add_foreign_key "messages", "teachers"
  add_foreign_key "monthly_goals", "students"
  add_foreign_key "questions", "students"
  add_foreign_key "questions", "teachers"
  add_foreign_key "replies", "questions"
  add_foreign_key "replies", "students"
  add_foreign_key "replies", "teachers"
  add_foreign_key "school_choises", "students"
  add_foreign_key "students", "teachers"
  add_foreign_key "study_records", "students"
end
