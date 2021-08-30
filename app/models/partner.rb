class Partner < ApplicationRecord
  belongs_to :book_shop
  belongs_to :publisher
end
