class Product < ActiveRecord::Base
  belongs_to :product_type
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
end
