class Alien < ApplicationRecord
  belongs_to :planet # alien.planet
  validates :name, presence: true, uniqueness: true
end
