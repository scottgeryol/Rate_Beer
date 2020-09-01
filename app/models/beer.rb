class Beer < ApplicationRecord
  has_many :carted_products
  belongs_to :breweries
  has_many :images
end
