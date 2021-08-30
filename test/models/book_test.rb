# frozen_string_literal: true

require 'test_helper'

class BookTest < ActiveSupport::TestCase
  test 'get shops' do
    books = Book.shops('Book 1')
    p books.to_sql
    books.each do |b|
      assert_includes(['Book Shop 1', 'Book Shop 3'], b.book_shop_name)
    end
  end

  test 'check uniqueness' do
    books_before = Book.all
    Book.create(book_name: 'Book 1')
    books_after = Book.all
    assert books_before.size == books_after.size
  end
end
