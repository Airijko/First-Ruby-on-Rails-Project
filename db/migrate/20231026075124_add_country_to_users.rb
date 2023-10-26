class AddCountryToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :country, null: true, foreign_key: true
  end
end
