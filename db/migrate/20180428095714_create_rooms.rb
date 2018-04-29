class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :number
      t.boolean :isAvailable
      t.string :description
      t.string :price
      t.references :user, foreign_key: true
      t.string :image1
      t.string :image2
      t.string :image3

      t.timestamps
    end
  end
end
