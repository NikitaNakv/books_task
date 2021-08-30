# frozen_string_literal: true

class Publisher < ApplicationRecord
  has_many :books
  has_many :partners
  has_many :book_shops, through: :partners
  validates :publisher_name, uniqueness: true
end
