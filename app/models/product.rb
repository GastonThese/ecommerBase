class Product < ApplicationRecord
  validates :name, :description, :price, presence: true, if: :publish?
  validates :code, presence: true
  validates :code, uniqueness: true
  validates :publish, inclusion: { in: [ true, false ] }
end
