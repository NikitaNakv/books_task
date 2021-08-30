# frozen_string_literal: true

class CreatePartners < ActiveRecord::Migration[6.1]
  def change
    create_table :partners do |t|
      t.references :book_shop, null: false, foreign_key: true
      t.references :partner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
