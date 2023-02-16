class Power < ApplicationRecord
  has_many :mutations
  has_many :aliens, through: :mutations
  # has_many :planets, through: :aliens   -> power.planets
  validates :name, presence: true, uniqueness: true
end
