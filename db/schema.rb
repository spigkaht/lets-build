# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2025_11_24_071426) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "houses", force: :cascade do |t|
    t.string "name"
    t.string "builder"
    t.float "area_total"
    t.float "area_house"
    t.float "min_block_width"
    t.float "width_house"
    t.float "length_house"
    t.integer "storeys"
    t.float "bedrooms"
    t.float "bathrooms"
    t.float "living_areas"
    t.float "study_areas"
    t.float "price_base"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
