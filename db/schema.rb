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

ActiveRecord::Schema.define(version: 20170721224318) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "academic_scores", force: :cascade do |t|
    t.float    "academic_score", default: 3.0
    t.integer  "university_id"
    t.integer  "user_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "academic_scores", ["university_id"], name: "index_academic_scores_on_university_id", using: :btree
  add_index "academic_scores", ["user_id"], name: "index_academic_scores_on_user_id", using: :btree

  create_table "accreditations", force: :cascade do |t|
    t.integer  "career_id"
    t.integer  "university_id"
    t.integer  "user_id"
    t.string   "name"
    t.string   "link"
    t.string   "year"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "accreditations", ["career_id"], name: "index_accreditations_on_career_id", using: :btree
  add_index "accreditations", ["university_id"], name: "index_accreditations_on_university_id", using: :btree
  add_index "accreditations", ["user_id"], name: "index_accreditations_on_user_id", using: :btree

  create_table "admission_scores", force: :cascade do |t|
    t.float    "admission_score", default: 3.0
    t.integer  "university_id"
    t.integer  "user_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "admission_scores", ["university_id"], name: "index_admission_scores_on_university_id", using: :btree
  add_index "admission_scores", ["user_id"], name: "index_admission_scores_on_user_id", using: :btree

  create_table "alumni_scores", force: :cascade do |t|
    t.float    "alumni_score",  default: 3.0
    t.integer  "university_id"
    t.integer  "user_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "alumni_scores", ["university_id"], name: "index_alumni_scores_on_university_id", using: :btree
  add_index "alumni_scores", ["user_id"], name: "index_alumni_scores_on_user_id", using: :btree

  create_table "avatars", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "university_id"
    t.string   "photo"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "avatars", ["university_id"], name: "index_avatars_on_university_id", using: :btree
  add_index "avatars", ["user_id"], name: "index_avatars_on_user_id", using: :btree

  create_table "careers", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "university_id"
    t.string   "name"
    t.string   "area"
    t.text     "description"
    t.text     "for_who"
    t.string   "duration"
    t.string   "modality"
    t.string   "shift"
    t.string   "email"
    t.string   "website"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "linkedin"
    t.string   "blog"
    t.string   "aprox_cost"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "slug"
    t.string   "option"
  end

  add_index "careers", ["slug"], name: "index_careers_on_slug", unique: true, using: :btree
  add_index "careers", ["university_id"], name: "index_careers_on_university_id", using: :btree
  add_index "careers", ["user_id"], name: "index_careers_on_user_id", using: :btree

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.string   "language"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "continent"
  end

  create_table "current_jobs", force: :cascade do |t|
    t.integer  "career_id"
    t.integer  "university_id"
    t.integer  "user_id"
    t.string   "business_name"
    t.string   "job"
    t.date     "start_date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "current_jobs", ["career_id"], name: "index_current_jobs_on_career_id", using: :btree
  add_index "current_jobs", ["university_id"], name: "index_current_jobs_on_university_id", using: :btree
  add_index "current_jobs", ["user_id"], name: "index_current_jobs_on_user_id", using: :btree

  create_table "ex_students", force: :cascade do |t|
    t.integer  "career_id"
    t.integer  "university_id"
    t.integer  "user_id"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "ex_students", ["career_id"], name: "index_ex_students_on_career_id", using: :btree
  add_index "ex_students", ["university_id"], name: "index_ex_students_on_university_id", using: :btree
  add_index "ex_students", ["user_id"], name: "index_ex_students_on_user_id", using: :btree

  create_table "finantial_scores", force: :cascade do |t|
    t.float    "Finantial_score", default: 3.0
    t.integer  "university_id"
    t.integer  "user_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "finantial_scores", ["university_id"], name: "index_finantial_scores_on_university_id", using: :btree
  add_index "finantial_scores", ["user_id"], name: "index_finantial_scores_on_user_id", using: :btree

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "graduation_scores", force: :cascade do |t|
    t.float    "graduation_score", default: 3.0
    t.integer  "university_id"
    t.integer  "user_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "graduation_scores", ["university_id"], name: "index_graduation_scores_on_university_id", using: :btree
  add_index "graduation_scores", ["user_id"], name: "index_graduation_scores_on_user_id", using: :btree

  create_table "images", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "university_id"
    t.string   "photo"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "images", ["university_id"], name: "index_images_on_university_id", using: :btree
  add_index "images", ["user_id"], name: "index_images_on_user_id", using: :btree

  create_table "infraestructure_scores", force: :cascade do |t|
    t.float    "infraestructure_score", default: 3.0
    t.integer  "university_id"
    t.integer  "user_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "infraestructure_scores", ["university_id"], name: "index_infraestructure_scores_on_university_id", using: :btree
  add_index "infraestructure_scores", ["user_id"], name: "index_infraestructure_scores_on_user_id", using: :btree

  create_table "investment_scores", force: :cascade do |t|
    t.float    "investment_score", default: 3.0
    t.integer  "university_id"
    t.integer  "user_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "investment_scores", ["university_id"], name: "index_investment_scores_on_university_id", using: :btree
  add_index "investment_scores", ["user_id"], name: "index_investment_scores_on_user_id", using: :btree

  create_table "party_scores", force: :cascade do |t|
    t.float    "party_score",   default: 3.0
    t.integer  "university_id"
    t.integer  "user_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "party_scores", ["university_id"], name: "index_party_scores_on_university_id", using: :btree
  add_index "party_scores", ["user_id"], name: "index_party_scores_on_user_id", using: :btree

  create_table "professor_scores", force: :cascade do |t|
    t.float    "professor_score", default: 3.0
    t.integer  "university_id"
    t.integer  "user_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "professor_scores", ["university_id"], name: "index_professor_scores_on_university_id", using: :btree
  add_index "professor_scores", ["user_id"], name: "index_professor_scores_on_user_id", using: :btree

  create_table "rankings", force: :cascade do |t|
    t.integer  "career_id"
    t.integer  "university_id"
    t.integer  "user_id"
    t.string   "name"
    t.integer  "position"
    t.string   "link"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "rankings", ["career_id"], name: "index_rankings_on_career_id", using: :btree
  add_index "rankings", ["university_id"], name: "index_rankings_on_university_id", using: :btree
  add_index "rankings", ["user_id"], name: "index_rankings_on_user_id", using: :btree

  create_table "reviews", force: :cascade do |t|
    t.integer  "career_id"
    t.integer  "university_id"
    t.integer  "user_id"
    t.integer  "star"
    t.text     "comment"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "reviews", ["career_id"], name: "index_reviews_on_career_id", using: :btree
  add_index "reviews", ["university_id"], name: "index_reviews_on_university_id", using: :btree
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id", using: :btree

  create_table "satisfaction_scores", force: :cascade do |t|
    t.float    "satisfaction_score", default: 3.0
    t.integer  "university_id"
    t.integer  "user_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "satisfaction_scores", ["university_id"], name: "index_satisfaction_scores_on_university_id", using: :btree
  add_index "satisfaction_scores", ["user_id"], name: "index_satisfaction_scores_on_user_id", using: :btree

  create_table "unive_scores", force: :cascade do |t|
    t.float    "unive_score",   default: 3.0
    t.integer  "university_id"
    t.integer  "user_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

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
    t.string   "slug"
  end

  add_index "universities", ["country_id"], name: "index_universities_on_country_id", using: :btree
  add_index "universities", ["slug"], name: "index_universities_on_slug", unique: true, using: :btree
  add_index "universities", ["user_id"], name: "index_universities_on_user_id", using: :btree

  create_table "uploads", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "university_id"
    t.string   "image"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "uploads", ["university_id"], name: "index_uploads_on_university_id", using: :btree
  add_index "uploads", ["user_id"], name: "index_uploads_on_user_id", using: :btree

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

  add_foreign_key "academic_scores", "universities"
  add_foreign_key "academic_scores", "users"
  add_foreign_key "accreditations", "careers"
  add_foreign_key "accreditations", "universities"
  add_foreign_key "accreditations", "users"
  add_foreign_key "admission_scores", "universities"
  add_foreign_key "admission_scores", "users"
  add_foreign_key "alumni_scores", "universities"
  add_foreign_key "alumni_scores", "users"
  add_foreign_key "avatars", "universities"
  add_foreign_key "avatars", "users"
  add_foreign_key "careers", "universities"
  add_foreign_key "careers", "users"
  add_foreign_key "current_jobs", "careers"
  add_foreign_key "current_jobs", "universities"
  add_foreign_key "current_jobs", "users"
  add_foreign_key "ex_students", "careers"
  add_foreign_key "ex_students", "universities"
  add_foreign_key "ex_students", "users"
  add_foreign_key "finantial_scores", "universities"
  add_foreign_key "finantial_scores", "users"
  add_foreign_key "graduation_scores", "universities"
  add_foreign_key "graduation_scores", "users"
  add_foreign_key "images", "universities"
  add_foreign_key "images", "users"
  add_foreign_key "infraestructure_scores", "universities"
  add_foreign_key "infraestructure_scores", "users"
  add_foreign_key "investment_scores", "universities"
  add_foreign_key "investment_scores", "users"
  add_foreign_key "party_scores", "universities"
  add_foreign_key "party_scores", "users"
  add_foreign_key "professor_scores", "universities"
  add_foreign_key "professor_scores", "users"
  add_foreign_key "rankings", "careers"
  add_foreign_key "rankings", "universities"
  add_foreign_key "rankings", "users"
  add_foreign_key "reviews", "careers"
  add_foreign_key "reviews", "universities"
  add_foreign_key "reviews", "users"
  add_foreign_key "satisfaction_scores", "universities"
  add_foreign_key "satisfaction_scores", "users"
  add_foreign_key "unive_scores", "universities"
  add_foreign_key "unive_scores", "users"
  add_foreign_key "universities", "countries"
  add_foreign_key "universities", "users"
  add_foreign_key "uploads", "universities"
  add_foreign_key "uploads", "users"
end
