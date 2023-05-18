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

ActiveRecord::Schema[7.0].define(version: 2023_05_18_072925) do
  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.text "biography"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "book_authors", force: :cascade do |t|
    t.integer "book_id", null: false
    t.integer "author_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_book_authors_on_author_id"
    t.index ["book_id"], name: "index_book_authors_on_book_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.integer "publication_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "number_of_pages"
  end

  create_table "carriage_costs", force: :cascade do |t|
    t.decimal "carriage_rate_per_rim"
    t.decimal "carriage_for_paper"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "paper_costs", force: :cascade do |t|
    t.decimal "rims_w_w"
    t.decimal "waste_print_plate"
    t.decimal "rims_for_waste"
    t.decimal "rims_required"
    t.decimal "additional_rims_for_rounding"
    t.decimal "total_rims_print_size"
    t.decimal "divide_for_purchase_size"
    t.decimal "total_rims_for_purchase"
    t.decimal "paper_size_length"
    t.decimal "paper_size_width"
    t.decimal "paper_multiply_LxW"
    t.decimal "paper_weight_per_kg"
    t.decimal "formula"
    t.decimal "paper_rate_per_kg"
    t.decimal "rate_per_rims"
    t.decimal "paper_for_text_cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "book_authors", "authors"
  add_foreign_key "book_authors", "books"
end
