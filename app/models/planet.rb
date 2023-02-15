class Planet < ApplicationRecord
  has_many :aliens, dependent: :destroy # planet.aliens
  validates :name, presence: true
end
