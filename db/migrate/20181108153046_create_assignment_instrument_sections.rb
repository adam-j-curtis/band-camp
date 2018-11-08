class CreateAssignmentInstrumentSections < ActiveRecord::Migration[5.2]
  def change
    create_table :assignment_instrument_sections do |t|
      t.belongs_to :assignment, null: false
      t.belongs_to :instrument_section, null: false

      t.timestamps null: false
    end
  end
end
