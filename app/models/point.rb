class Point < ApplicationRecord
  belongs_to :construction
  validates :name, :lng, :lat, :construction_id, presence: true
  validates :name, length: { maximum: 20 }
  validates :lng, numericality: { greater_than_or_equal_to: -180, less_than_or_equal_to: 180 }
  validates :lat, numericality: { greater_than_or_equal_to: -90, less_than_or_equal_to: 90 }
end
