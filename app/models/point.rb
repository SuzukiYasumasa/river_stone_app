class Point < ApplicationRecord
  belongs_to :construction
  validates :name, :lng, :lat, :construction_id, :release, presence: true
  validates :name, presence: true, length: { maximum: 20 }
end
