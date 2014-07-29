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

ActiveRecord::Schema.define(:version => 20140729115758) do

  create_table "classrooms", :force => true do |t|
    t.string   "name"
    t.string   "location"
    t.boolean  "projector"
    t.integer  "tables"
    t.integer  "chairs"
    t.boolean  "chillout"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cohorts", :force => true do |t|
    t.string   "name"
    t.string   "location"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "course_id"
    t.integer  "status_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cohorts_profiles", :id => false, :force => true do |t|
    t.integer "cohort_id"
    t.integer "profile_id"
  end

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "outcome"
    t.integer  "status_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "courses_lessons", :id => false, :force => true do |t|
    t.integer "course_id"
    t.integer "lesson_id"
  end

  create_table "histories", :force => true do |t|
    t.integer  "p_id"
    t.integer  "st_id"
    t.integer  "t_id"
    t.integer  "c_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "lessons", :force => true do |t|
    t.string   "name"
    t.string   "subject"
    t.integer  "timerequired"
    t.integer  "status_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "profiles", :force => true do |t|
    t.string   "name"
    t.string   "primarylocation"
    t.integer  "role_id"
    t.string   "picture"
    t.string   "assignedlocation"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "profiles_tutorials", :id => false, :force => true do |t|
    t.integer "profile_id"
    t.integer "tutorial_id"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "statuses", :force => true do |t|
    t.string   "thing"
    t.string   "statusname"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tutorials", :force => true do |t|
    t.string   "name"
    t.integer  "status_id"
    t.integer  "timerquired"
    t.string   "cohort_id"
    t.string   "subject"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "role"
  end

end
