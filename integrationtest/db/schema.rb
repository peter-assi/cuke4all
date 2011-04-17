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

ActiveRecord::Schema.define(:version => 0) do

  create_table "abstract_person", :force => true do |t|
    t.string   "dtype",          :limit => 31, :null => false
    t.string   "address",        :limit => 50, :null => false
    t.datetime "birth_day",                    :null => false
    t.string   "city",           :limit => 30, :null => false
    t.string   "email",          :limit => 30
    t.string   "first_name",     :limit => 30
    t.string   "home_page",      :limit => 30
    t.string   "last_name",      :limit => 30, :null => false
    t.string   "telephone",                    :null => false
    t.integer  "version"
    t.datetime "employed_since"
    t.integer  "specialty"
  end

  create_table "pet", :force => true do |t|
    t.string  "name",                        :null => false
    t.binary  "send_reminders", :limit => 1, :null => false
    t.integer "type",                        :null => false
    t.integer "version"
    t.float   "weight",                      :null => false
    t.integer "owner",          :limit => 8
  end

  add_index "pet", ["owner"], :name => "FK1B11FE8E4E5BC"

  create_table "visit", :force => true do |t|
    t.string   "description"
    t.integer  "version"
    t.datetime "visit_date",               :null => false
    t.integer  "pet",         :limit => 8, :null => false
    t.integer  "vet",         :limit => 8
  end

  add_index "visit", ["pet"], :name => "FK6B04D4B6B108014"
  add_index "visit", ["vet"], :name => "FK6B04D4B6B10AD20"

end
