class AddGenderToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :genders, null: true, foreign_key: true
  end
end
