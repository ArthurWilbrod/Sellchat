class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.string :cat_title
      t.integer :qty
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
