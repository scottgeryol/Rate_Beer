class Brewery < ApplicationRecord
  belongs_to :beer
  has_many :images
end
