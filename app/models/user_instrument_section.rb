class UserInstrumentSection < ApplicationRecord
  belongs_to :user
  belongs_to :instrument_section
end
