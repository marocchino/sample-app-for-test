class Product < ApplicationRecord
  belongs_to :store
  has_many :comments
end
