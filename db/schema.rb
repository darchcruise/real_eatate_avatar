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

ActiveRecord::Schema.define(:version => 20131130045043) do

  create_table "agents", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "apartments", :force => true do |t|
    t.integer  "agent_id"
    t.string   "address"
    t.string   "neighborhood"
    t.integer  "price"
    t.integer  "common_charges"
    t.integer  "taxes"
    t.float    "deposit"
    t.string   "property_type"
    t.string   "bedrooms"
    t.string   "bathrooms"
    t.string   "feature1"
    t.string   "feature2"
    t.string   "feature3"
    t.string   "feature4"
    t.string   "feature5"
    t.string   "feature6"
    t.string   "feature7"
    t.string   "feature8"
    t.string   "feature9"
    t.text     "description"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
