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

ActiveRecord::Schema.define(version: 0) do

  create_table "NationalNames", primary_key: "Id", force: :cascade do |t|
    t.text    "Name"
    t.integer "Year"
    t.text    "Gender"
    t.integer "Count"
  end

  add_index "NationalNames", ["Name"], name: "nationalnames_name_idx"
  add_index "NationalNames", ["Year"], name: "nationalnames_year_idx"

  create_table "StateNames", primary_key: "Id", force: :cascade do |t|
    t.text    "Name"
    t.integer "Year"
    t.text    "Gender"
    t.text    "State"
    t.integer "Count"
  end

  add_index "StateNames", ["Name"], name: "statenames_name_idx"
  add_index "StateNames", ["State"], name: "statenames_state_idx"
  add_index "StateNames", ["Year"], name: "statenames_year_idx"

end
