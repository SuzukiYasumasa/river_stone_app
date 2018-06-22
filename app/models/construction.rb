class Construction < ApplicationRecord
  has_many :points, dependent: :destroy
  validates :name, presence: true, length: { maximum: 100 }
end
