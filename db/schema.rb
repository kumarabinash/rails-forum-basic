# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150705211355) do

  create_table "forum_answer_comments", force: :cascade do |t|
    t.text     "body",            limit: 65535
    t.integer  "forum_answer_id", limit: 4
    t.integer  "user_id",         limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "forum_answers", force: :cascade do |t|
    t.text     "body",              limit: 65535
    t.integer  "thumb_up",          limit: 4,     default: 0
    t.integer  "thumb_down",        limit: 4,     default: 0
    t.string   "flag",              limit: 255
    t.integer  "forum_question_id", limit: 4
    t.integer  "user_id",           limit: 4
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.integer  "approved",          limit: 4,     default: 0
  end

  create_table "forum_question_comments", force: :cascade do |t|
    t.text     "body",              limit: 65535
    t.integer  "forum_question_id", limit: 4
    t.integer  "user_id",           limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "forum_questions", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "body",       limit: 65535
    t.string   "flag",       limit: 255
    t.integer  "votes",      limit: 4,     default: 0
    t.integer  "view_count", limit: 4,     default: 0
    t.integer  "topic_id",   limit: 4
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "solved",     limit: 4,     default: 0
  end

  create_table "forum_questions_topics", force: :cascade do |t|
    t.integer "topic_id",          limit: 4
    t.integer "forum_question_id", limit: 4
  end

  add_index "forum_questions_topics", ["forum_question_id"], name: "index_forum_questions_topics_on_forum_question_id", using: :btree
  add_index "forum_questions_topics", ["topic_id"], name: "index_forum_questions_topics_on_topic_id", using: :btree

  create_table "topics", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "user_details", force: :cascade do |t|
    t.string   "first_name",   limit: 255
    t.string   "last_name",    limit: 255
    t.string   "username",     limit: 255
    t.string   "image_url",    limit: 255
    t.string   "address",      limit: 255
    t.string   "phone_number", limit: 255
    t.string   "gender",       limit: 255
    t.integer  "user_id",      limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
