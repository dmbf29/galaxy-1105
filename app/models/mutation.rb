class Mutation < ApplicationRecord
  belongs_to :alien
  belongs_to :power
  validates :power, uniqueness: { scope: :alien }
end
