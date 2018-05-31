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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2018_05_31_020134) do
=======
ActiveRecord::Schema.define(version: 2018_05_31_131404) do
>>>>>>> a7c660422c2522b4e3adf25895a1b8a76f3bb3ef

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hangouts", force: :cascade do |t|
    t.integer "host_id"
    t.integer "guest_id"
    t.integer "restaurant_id"
    t.string "date"
    t.string "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "cuisine"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
<<<<<<< HEAD
    t.string "username"
=======
>>>>>>> a7c660422c2522b4e3adf25895a1b8a76f3bb3ef
    t.string "password_digest"
  end

end
