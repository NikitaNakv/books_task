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

ActiveRecord::Schema.define(version: 2021_08_30_105504) do

  create_table "authors", force: :cascade do |t|
    t.string "author_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "authorships", force: :cascade do |t|
    t.integer "author_id", null: false
    t.integer "book_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_id"], name: "index_authorships_on_author_id"
    t.index ["book_id"], name: "index_authorships_on_book_id"
  end

  create_table "book_shops", force: :cascade do |t|
    t.string "book_shop_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "books", force: :cascade do |t|
    t.string "book_name"
    t.integer "publisher_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["publisher_id"], name: "index_books_on_publisher_id"
  end

  create_table "partners", force: :cascade do |t|
    t.integer "book_shop_id", null: false
    t.integer "publisher_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_shop_id"], name: "index_partners_on_book_shop_id"
    t.index ["publisher_id"], name: "index_partners_on_publisher_id"
  end

  create_table "publishers", force: :cascade do |t|
    t.string "publisher_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "authorships", "authors"
  add_foreign_key "authorships", "books"
  add_foreign_key "books", "publishers"
  add_foreign_key "partners", "book_shops"
  add_foreign_key "partners", "publishers"
end
