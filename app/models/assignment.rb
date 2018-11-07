class Assignment < ApplicationRecord
  belongs_to :users
  belongs_to :instrumental_sections

  validates :name, presence: true
end
