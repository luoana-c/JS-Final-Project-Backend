class CreateHotels < ActiveRecord::Migration[5.2]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :city
      t.string :country
      t.string :website
      t.string :full_image
      t.string :cropped_image

      t.timestamps
    end
  end
end
