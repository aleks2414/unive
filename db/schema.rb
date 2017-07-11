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

ActiveRecord::Schema.define(version: 20170711202634) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "academic_scores", force: :cascade do |t|
    t.float    "academic_score", default: 3.0
    t.integer  "university_id"
    t.integer  "country_id"
    t.integer  "user_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "academic_scores", ["country_id"], name: "index_academic_scores_on_country_id", using: :btree
  add_index "academic_scores", ["university_id"], name: "index_academic_scores_on_university_id", using: :btree
  add_index "academic_scores", ["user_id"], name: "index_academic_scores_on_user_id", using: :btree

  create_table "admission_scores", force: :cascade do |t|
    t.float    "admission_score", default: 3.0
    t.integer  "university_id"
    t.integer  "country_id"
    t.integer  "user_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "admission_scores", ["country_id"], name: "index_admission_scores_on_country_id", using: :btree
  add_index "admission_scores", ["university_id"], name: "index_admission_scores_on_university_id", using: :btree
  add_index "admission_scores", ["user_id"], name: "index_admission_scores_on_user_id", using: :btree

  create_table "alumni_scores", force: :cascade do |t|
    t.float    "alumni_score",  default: 3.0
    t.integer  "university_id"
    t.integer  "country_id"
    t.integer  "user_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "alumni_scores", ["country_id"], name: "index_alumni_scores_on_country_id", using: :btree
  add_index "alumni_scores", ["university_id"], name: "index_alumni_scores_on_university_id", using: :btree
  add_index "alumni_scores", ["user_id"], name: "index_alumni_scores_on_user_id", using: :btree

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.string   "language"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "finantial_scores", force: :cascade do |t|
    t.float    "Finantial_score", default: 3.0
    t.integer  "university_id"
    t.integer  "country_id"
    t.integer  "user_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "finantial_scores", ["country_id"], name: "index_finantial_scores_on_country_id", using: :btree
  add_index "finantial_scores", ["university_id"], name: "index_finantial_scores_on_university_id", using: :btree
  add_index "finantial_scores", ["user_id"], name: "index_finantial_scores_on_user_id", using: :btree

  create_table "graduation_scores", force: :cascade do |t|
    t.float    "graduation_score", default: 3.0
    t.integer  "university_id"
    t.integer  "country_id"
    t.integer  "user_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "graduation_scores", ["country_id"], name: "index_graduation_scores_on_country_id", using: :btree
  add_index "graduation_scores", ["university_id"], name: "index_graduation_scores_on_university_id", using: :btree
  add_index "graduation_scores", ["user_id"], name: "index_graduation_scores_on_user_id", using: :btree

  create_table "infraestructure_scores", force: :cascade do |t|
    t.float    "infraestructure_score", default: 3.0
    t.integer  "university_id"
    t.integer  "country_id"
    t.integer  "user_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "infraestructure_scores", ["country_id"], name: "index_infraestructure_scores_on_country_id", using: :btree
  add_index "infraestructure_scores", ["university_id"], name: "index_infraestructure_scores_on_university_id", using: :btree
  add_index "infraestructure_scores", ["user_id"], name: "index_infraestructure_scores_on_user_id", using: :btree

  create_table "investment_scores", force: :cascade do |t|
    t.float    "investment_score", default: 3.0
    t.integer  "university_id"
    t.integer  "country_id"
    t.integer  "user_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "investment_scores", ["country_id"], name: "index_investment_scores_on_country_id", using: :btree
  add_index "investment_scores", ["university_id"], name: "index_investment_scores_on_university_id", using: :btree
  add_index "investment_scores", ["user_id"], name: "index_investment_scores_on_user_id", using: :btree

  create_table "party_scores", force: :cascade do |t|
    t.float    "party_score",   default: 3.0
    t.integer  "university_id"
    t.integer  "country_id"
    t.integer  "user_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "party_scores", ["country_id"], name: "index_party_scores_on_country_id", using: :btree
  add_index "party_scores", ["university_id"], name: "index_party_scores_on_university_id", using: :btree
  add_index "party_scores", ["user_id"], name: "index_party_scores_on_user_id", using: :btree

  create_table "professor_scores", force: :cascade do |t|
    t.float    "professor_score", default: 3.0
    t.integer  "university_id"
    t.integer  "country_id"
    t.integer  "user_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "professor_scores", ["country_id"], name: "index_professor_scores_on_country_id", using: :btree
  add_index "professor_scores", ["university_id"], name: "index_professor_scores_on_university_id", using: :btree
  add_index "professor_scores", ["user_id"], name: "index_professor_scores_on_user_id", using: :btree

  create_table "satisfaction_scores", force: :cascade do |t|
    t.float    "satisfaction_score", default: 3.0
    t.integer  "university_id"
    t.integer  "country_id"
    t.integer  "user_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "satisfaction_scores", ["country_id"], name: "index_satisfaction_scores_on_country_id", using: :btree
  add_index "satisfaction_scores", ["university_id"], name: "index_satisfaction_scores_on_university_id", using: :btree
  add_index "satisfaction_scores", ["user_id"], name: "index_satisfaction_scores_on_user_id", using: :btree

  create_table "unive_scores", force: :cascade do |t|
    t.float    "unive_score",   default: 3.0
    t.integer  "university_id"
    t.integer  "country_id"
    t.integer  "user_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "unive_scores", ["country_id"], name: "index_unive_scores_on_country_id", using: :btree
  add_index "unive_scores", ["university_id"], name: "index_unive_scores_on_university_id", using: :btree
  add_index "unive_scores", ["user_id"], name: "index_unive_scores_on_user_id", using: :btree

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
    t.boolean  "is_student_exchange"
    t.boolean  "is_spiritual"
    t.string   "sports"
    t.string   "cutural"
    t.string   "languages"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "universities", ["country_id"], name: "index_universities_on_country_id", using: :btree
  add_index "universities", ["user_id"], name: "index_universities_on_user_id", using: :btree

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

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "academic_scores", "countries"
  add_foreign_key "academic_scores", "universities"
  add_foreign_key "academic_scores", "users"
  add_foreign_key "admission_scores", "countries"
  add_foreign_key "admission_scores", "universities"
  add_foreign_key "admission_scores", "users"
  add_foreign_key "alumni_scores", "countries"
  add_foreign_key "alumni_scores", "universities"
  add_foreign_key "alumni_scores", "users"
  add_foreign_key "finantial_scores", "countries"
  add_foreign_key "finantial_scores", "universities"
  add_foreign_key "finantial_scores", "users"
  add_foreign_key "graduation_scores", "countries"
  add_foreign_key "graduation_scores", "universities"
  add_foreign_key "graduation_scores", "users"
  add_foreign_key "infraestructure_scores", "countries"
  add_foreign_key "infraestructure_scores", "universities"
  add_foreign_key "infraestructure_scores", "users"
  add_foreign_key "investment_scores", "countries"
  add_foreign_key "investment_scores", "universities"
  add_foreign_key "investment_scores", "users"
  add_foreign_key "party_scores", "countries"
  add_foreign_key "party_scores", "universities"
  add_foreign_key "party_scores", "users"
  add_foreign_key "professor_scores", "countries"
  add_foreign_key "professor_scores", "universities"
  add_foreign_key "professor_scores", "users"
  add_foreign_key "satisfaction_scores", "countries"
  add_foreign_key "satisfaction_scores", "universities"
  add_foreign_key "satisfaction_scores", "users"
  add_foreign_key "unive_scores", "countries"
  add_foreign_key "unive_scores", "universities"
  add_foreign_key "unive_scores", "users"
  add_foreign_key "universities", "countries"
  add_foreign_key "universities", "users"
end
