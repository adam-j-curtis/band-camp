class Band < ApplicationRecord
  # has_many :band_instrument_sections
  # has_many :instrument_sections, through: :band_instrument_sections

  has_many :band_memberships
  has_many :users, through: :band_memberships

  belongs_to :teacher, class_name: "User"

  validates :name, presence: true
end
