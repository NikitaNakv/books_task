# frozen_string_literal: true

class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :book_name
      t.references :publisher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
