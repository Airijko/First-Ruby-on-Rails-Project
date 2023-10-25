class RenameFakerDataToUsers < ActiveRecord::Migration[7.0]
  def change
    rename_table :faker_data, :users
  end
end
