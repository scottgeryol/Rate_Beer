class Image < ApplicationRecord
  belongs_to :brewery
  belongs_to :beer
end
