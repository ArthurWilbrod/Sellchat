class CreateConfirmedorders < ActiveRecord::Migration[5.2]
  def change
    create_table :confirmedorders do |t|

      t.timestamps
    end
  end
end
