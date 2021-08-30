# frozen_string_literal: true

class Book < ApplicationRecord
  belongs_to :publisher
  has_many :authors, through: :authorships
  has_many :authorships
  validates :book_name, uniqueness: true

  scope :shops, lambda { |book|
                  joins(publisher: { partners: :book_shop }).select('books.id, books.book_name, book_shops.id, book_shops.book_shop_name').where('book_name == ?', book)
                }
end
