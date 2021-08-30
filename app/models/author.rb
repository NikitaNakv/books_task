# frozen_string_literal: true

class Author < ApplicationRecord
  has_many :authorships
  has_many :books, through: :authorships
  validates :author_name, uniqueness: true
end
