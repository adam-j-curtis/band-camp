class InstrumentSection < ApplicationRecord
  has_many :assignment_instrument_sections
  has_many :assignments, through: :assignment_instrument_sections

  has_many :user_instrument_sections
  has_many :users, through: :user_instrument_sections

  has_many :chair_instrument_sections
  has_many :chairs, through: :chair_instrument_sections


  validates :instrument, presence: true
end
