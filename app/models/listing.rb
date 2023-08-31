class Listing < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  validates :title, uniqueness: true
  validates :location, presence: true
  validates :price, presence: true
  validates :description, length: { minimum: 20, maximum: 500, too_short: 'minimum 20 characters', too_long: 'maxiumum 500 characters are allowed' }
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
