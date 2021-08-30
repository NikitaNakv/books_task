class BookShop < ApplicationRecord
  has_many :partners
  has_many :publishers, :through => :partners
  validates :book_shop_name, uniqueness: true
end
