class Beer < ApplicationRecord
  has_many :carted_products
  belongs_to :brewery
  has_many :images
end
