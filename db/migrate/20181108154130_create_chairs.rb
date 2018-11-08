class CreateChairs < ActiveRecord::Migration[5.2]
  def change
    create_table :chairs do |t|
      t.string :ordinal_name, null: false

      t.timestamps null: true
    end
  end
end
