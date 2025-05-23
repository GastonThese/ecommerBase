class Product < ApplicationRecord
  validates :name, :code, :description, :price, presence: true, if: :publish?
end


