class Chair < ApplicationRecord
  has_many :chair_instrument_sections
  has_many :instrument_sections, through: :chair_instrument_sections
end
