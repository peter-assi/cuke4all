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

  create_table "owners", :force => true do |t|
    t.string "first_name", :limit => 30
    t.string "last_name",  :limit => 30
    t.string "address"
    t.string "city",       :limit => 80
    t.string "telephone",  :limit => 20
  end

  add_index "owners", ["last_name"], :name => "last_name"

  create_table "pets", :force => true do |t|
    t.string  "name",       :limit => 30
    t.date    "birth_date"
    t.integer "type_id",                  :null => false
    t.integer "owner_id",                 :null => false
  end

  add_index "pets", ["name"], :name => "name"
  add_index "pets", ["owner_id"], :name => "owner_id"
  add_index "pets", ["type_id"], :name => "type_id"

  create_table "specialties", :force => true do |t|
    t.string "name", :limit => 80
  end

  add_index "specialties", ["name"], :name => "name"

  create_table "types", :force => true do |t|
    t.string "name", :limit => 80
  end

  add_index "types", ["name"], :name => "name"

  create_table "vet_specialties", :id => false, :force => true do |t|
    t.integer "vet_id",       :null => false
    t.integer "specialty_id", :null => false
  end

  add_index "vet_specialties", ["specialty_id"], :name => "specialty_id"
  add_index "vet_specialties", ["vet_id", "specialty_id"], :name => "vet_id", :unique => true

  create_table "vets", :force => true do |t|
    t.string "first_name", :limit => 30
    t.string "last_name",  :limit => 30
  end

  add_index "vets", ["last_name"], :name => "last_name"

  create_table "visits", :force => true do |t|
    t.integer "pet_id",      :null => false
    t.date    "visit_date"
    t.string  "description"
  end

  add_index "visits", ["pet_id"], :name => "pet_id"

end
