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

ActiveRecord::Schema.define(:version => 20130615170514) do

  create_table "addresses", :force => true do |t|
    t.string   "line1"
    t.string   "line2"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.integer  "addressable_id"
    t.string   "addressable_type"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "contacts", :force => true do |t|
    t.string   "f_name"
    t.string   "l_name"
    t.integer  "contactable_id"
    t.string   "contactable_type"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "emails", :force => true do |t|
    t.string   "email_address"
    t.string   "domain"
    t.string   "full_email"
    t.string   "type"
    t.integer  "emailable_id"
    t.string   "emailable_type"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "leads", :force => true do |t|
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "name"
    t.datetime "last_updated"
  end

  create_table "people", :force => true do |t|
    t.string   "fName"
    t.string   "lName"
    t.string   "salutation"
    t.string   "sex"
    t.integer  "personable_id"
    t.string   "personable_type"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "phones", :force => true do |t|
    t.string   "ph_num"
    t.integer  "ext"
    t.integer  "callable_id"
    t.string   "callable_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "sic_codes", :force => true do |t|
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "lead_id"
    t.integer  "sic"
    t.string   "description"
  end

  create_table "tests", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
