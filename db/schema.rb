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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130821184710) do

  create_table "answers", :force => true do |t|
    t.string   "content"
    t.integer  "question_id"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.boolean  "is_correct",  :default => false
  end

  create_table "questions", :force => true do |t|
    t.integer  "quiz_id"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "quizzes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.boolean  "show_quiz",  :default => false
  end

  create_table "responses", :force => true do |t|
    t.integer  "user_id"
    t.integer  "quiz_id"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
    t.integer  "answer_id"
    t.integer  "question_id"
    t.boolean  "answer_choice"
    t.boolean  "choice",            :default => false
    t.string   "response_question"
    t.string   "response_answer"
    t.boolean  "quiz_taken",        :default => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.string   "email"
    t.boolean  "teacher",         :default => false
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

end
