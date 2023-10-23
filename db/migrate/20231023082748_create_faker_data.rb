class CreateFakerData < ActiveRecord::Migration[7.0]
  def change
    create_table :faker_data do |t|
      t.string :name
      t.string :email
      t.text :bio
      t.string :image

      t.timestamps
    end
  end
end
