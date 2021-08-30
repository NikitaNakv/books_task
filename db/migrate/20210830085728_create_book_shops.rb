# frozen_string_literal: true

class CreateBookShops < ActiveRecord::Migration[6.1]
  def change
    create_table :book_shops do |t|
      t.string :book_shop_name

      t.timestamps
    end
  end
end
