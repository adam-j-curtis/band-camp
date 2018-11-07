class InstrumentalSection < ApplicationRecord
  has_many :assignments
  has_many :users, through: :assignments

  validates :instrument, presence: true
end
