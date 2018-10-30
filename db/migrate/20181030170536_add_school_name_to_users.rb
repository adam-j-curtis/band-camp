class AddSchoolNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :school_name, :string, null: false
  end
end
