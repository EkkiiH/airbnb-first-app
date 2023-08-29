class Listing < ApplicationRecord
  belongs_to :user
  validates :title, uniqueness: { scope: :list_id }
  validates :location, presence: true
  validates :price, presence: true
  validates :description, length: { minimum: 20, maximum: 500, too_short: 'minimum 20 characters', too_long: 'maxiumum 500 characters are allowed' }
end
