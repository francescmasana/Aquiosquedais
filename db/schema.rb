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

ActiveRecord::Schema.define(:version => 20110507160415) do

  create_table "cultures", :force => true do |t|
    t.integer  "region_id"
    t.float    "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dangerous_wastes", :force => true do |t|
    t.integer  "region_id"
    t.float    "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "economies", :force => true do |t|
    t.integer  "region_id"
    t.float    "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "educations", :force => true do |t|
    t.integer  "region_id"
    t.float    "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "environments", :force => true do |t|
    t.integer  "region_id"
    t.float    "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "healths", :force => true do |t|
    t.integer  "region_id"
    t.float    "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "immigrations", :force => true do |t|
    t.integer  "region_id"
    t.float    "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regions", :force => true do |t|
    t.string   "name"
    t.integer  "population"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "preculture"
    t.float    "predangerous_waste"
    t.float    "preeconomy"
    t.float    "preeducation"
    t.float    "preenvironment"
    t.float    "prehealth"
    t.float    "preimmigration"
    t.float    "presocial_protection"
    t.float    "preunemployment"
  end

  create_table "social_protections", :force => true do |t|
    t.integer  "region_id"
    t.float    "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "submits", :force => true do |t|
    t.integer  "region_from_id"
    t.integer  "region_result_id"
    t.string   "ip"
    t.integer  "culture"
    t.integer  "dangerous_waste"
    t.integer  "economy"
    t.integer  "education"
    t.integer  "environment"
    t.integer  "health"
    t.integer  "immigration"
    t.integer  "social_protection"
    t.integer  "unemployment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unemployments", :force => true do |t|
    t.integer  "region_id"
    t.float    "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
