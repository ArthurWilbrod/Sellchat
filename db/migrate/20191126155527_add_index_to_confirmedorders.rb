class AddIndexToConfirmedorders < ActiveRecord::Migration[5.2]
  def change
    add_reference :confirmedorders, :user, foreign_key: true
  end
end