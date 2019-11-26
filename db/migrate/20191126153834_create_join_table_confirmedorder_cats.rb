class CreateJoinTableConfirmedorderCats < ActiveRecord::Migration[5.2]
  def change
    create_table :join_table_confirmedorder_cats do |t|
      t.belongs_to :confirmedorder, index: true
      t.belongs_to :cat, index: true

      t.timestamps
    end
  end
end
