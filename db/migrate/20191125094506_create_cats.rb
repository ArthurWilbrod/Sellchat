class CreateCats < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.string :title
      t.text :description
      t.float :price
      t.string :image_url

      t.timestamps
    end
  end
end