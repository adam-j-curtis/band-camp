class CreateUserInstrumentSections < ActiveRecord::Migration[5.2]
  def change
    create_table :user_instrument_sections do |t|
      t.belongs_to :user, null: false
      t.belongs_to :instrument_section, null: false

      t.timestamps null: false
    end
  end
end
