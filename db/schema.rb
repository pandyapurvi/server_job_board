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

ActiveRecord::Schema.define(version: 2019_06_04_000859) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.integer "user_id"
    t.integer "job_id"
    t.date "application_date"
    t.text "resume"
    t.text "cover_letter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.text "title"
    t.date "post_date"
    t.text "description"
    t.text "level"
    t.text "company_type"
    t.integer "salary"
    t.text "job_type"
    t.date "close_date"
    t.text "city"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "email"
    t.text "password_digest"
    t.text "name"
    t.integer "phone"
    t.text "website"
    t.boolean "employer"
    t.text "company_size"
    t.text "company_type"
    t.text "description"
    t.text "ABN"
    t.text "image"
    t.text "resume"
    t.text "notice_period"
    t.integer "experience"
    t.text "current_title"
    t.integer "application_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "confirmation_token"
    t.datetime "confirmation_sent_at"
    t.datetime "confirmed_at"
  end

end
