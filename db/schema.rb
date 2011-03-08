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

<<<<<<< HEAD
ActiveRecord::Schema.define(:version => 20110308090938) do
=======
ActiveRecord::Schema.define(:version => 20110308031758) do
>>>>>>> feedbacks

  create_table "feedbacks", :force => true do |t|
    t.string   "full_name"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "picture"
  end
<<<<<<< HEAD

  create_table "requests", :force => true do |t|
    t.string   "mark"
    t.string   "car_model"
    t.integer  "year"
    t.string   "displacement"
    t.string   "vin"
    t.string   "engine_model"
    t.string   "required_part"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "client_name"
    t.string   "client_phone"
  end
=======
>>>>>>> feedbacks

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
