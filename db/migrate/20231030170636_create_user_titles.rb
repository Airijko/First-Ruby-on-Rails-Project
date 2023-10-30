class CreateUserTitles < ActiveRecord::Migration[6.0]
  def change
    create_table :user_titles do |t|
      t.references :user, foreign_key: true
      t.references :title, foreign_key: true
      t.timestamps
    end
  end
end
