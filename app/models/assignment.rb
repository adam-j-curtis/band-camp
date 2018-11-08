class Assignment < ApplicationRecord
  # has_many :user_assignments
  # has_many :users, through: :user_assignments

  has_many :assignment_instrument_sections
  has_many :instrument_sections, through: :assignment_instrument_sections

  validates :name, presence: true
end
