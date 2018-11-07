class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.belongs_to :instrumental_sections, null: false
      t.belongs_to :users, null: false
    end
  end
end
