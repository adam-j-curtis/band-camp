class CreateChairInstrumentSections < ActiveRecord::Migration[5.2]
  def change
    create_table :chair_instrument_sections do |t|
      t.belongs_to :chair
      t.belongs_to :instrument_section

      t.timestamps null: false
    end
  end
end
