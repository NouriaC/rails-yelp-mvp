class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, presence: true
  validates :category, inclusion: { in: ["Chinese", "Italian", "Japanese", "French", "Belgian"] }
end
