class CreateEducatorEducatee < ActiveRecord::Migration[5.2]
  def change
    create_table :educator_educatees do |t|
      t.belongs_to :teacher, null: false
      t.belongs_to :student, null: false

      t.timestamps null: false
    end
  end
end
