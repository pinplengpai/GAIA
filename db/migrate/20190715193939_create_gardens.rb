class CreateGardens < ActiveRecord::Migration[5.2]
  def change
    create_table :gardens do |t|
      t.string :image_url
      t.string :name
      t.string :address
      t.string :description
      t.integer :size
      t.integer :price
      t.integer :number_of_guests
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
