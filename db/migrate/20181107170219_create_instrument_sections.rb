class CreateInstrumentSections < ActiveRecord::Migration[5.2]
  def change
    create_table :instrument_sections do |t|
      t.string :instrument, null: false

      t.timestamps null: false
    end
  end
end
