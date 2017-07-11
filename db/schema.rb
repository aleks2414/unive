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

ActiveRecord::Schema.define(version: 20170711010729) do

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.string   "language"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "universities", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "country_id"
    t.string   "option"
    t.string   "private_or_public"
    t.string   "name"
    t.text     "description"
    t.string   "fundation"
    t.string   "rector"
    t.string   "email"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "linkedin"
    t.string   "website"
    t.string   "link_admission"
    t.string   "address"
    t.float    "longitude"
    t.float    "latitude"
    t.string   "logo"
    t.string   "many_proffesors"
    t.string   "many_students"
    t.boolean  "is_wifi"
    t.boolean  "is_cafe"
    t.boolean  "is_safe"
    t.boolean  "is_libray"
    t.boolean  "is_job_help"
    t.string   "is_student_exchange"
    t.boolean  "is_spiritual"
    t.string   "sports"
    t.string   "cutural"
    t.string   "languages"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "universities", ["country_id"], name: "index_universities_on_country_id"
  add_index "universities", ["user_id"], name: "index_universities_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
