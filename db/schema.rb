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

ActiveRecord::Schema.define(version: 20180601003955) do

  create_table "notices", force: :cascade do |t|
    t.string "user_name"
    t.text "token"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "punches", force: :cascade do |t|
    t.integer "punchable_id", null: false
    t.string "punchable_type", limit: 20, null: false
    t.datetime "starts_at", null: false
    t.datetime "ends_at", null: false
    t.datetime "average_time", null: false
    t.integer "hits", default: 1, null: false
    t.index ["average_time"], name: "index_punches_on_average_time"
    t.index ["punchable_type", "punchable_id"], name: "punchable_index"
  end

  create_table "qnacomments", force: :cascade do |t|
    t.string "content"
    t.string "user_email"
    t.string "user_name"
    t.integer "qna_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["qna_id"], name: "index_qnacomments_on_qna_id"
  end

  create_table "qnareplies", force: :cascade do |t|
    t.string "title"
    t.string "user_email"
    t.text "content"
    t.string "user_name"
    t.integer "qna_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["qna_id"], name: "index_qnareplies_on_qna_id"
  end

  create_table "qnas", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "user_email"
    t.string "user_name"
    t.integer "view_count", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quizcomments", force: :cascade do |t|
    t.string "content"
    t.string "user_email"
    t.integer "quiz_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quiz_id"], name: "index_quizcomments_on_quiz_id"
  end

  create_table "quizzes", force: :cascade do |t|
    t.text "content"
    t.string "user_email"
    t.string "title"
    t.integer "view_count", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sessioncomments", force: :cascade do |t|
    t.string "content"
    t.string "user_email"
    t.integer "session_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["session_id"], name: "index_sessioncomments_on_session_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "user_email"
    t.string "s3_file"
    t.integer "view_count", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipcomments", force: :cascade do |t|
    t.string "content"
    t.string "user_email"
    t.integer "tip_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tip_id"], name: "index_tipcomments_on_tip_id"
  end

  create_table "tips", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "user_email"
    t.integer "view_count", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", default: "", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
