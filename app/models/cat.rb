class Cat < ApplicationRecord
#Un Cat doit avoir un title, une description, un prix et un image
    validates :title,
        presence: true,
        length: { in: 3..14 }
    validates :description,
        presence: true
    validates :price,
        presence: true
    validates :price,
        presence: true

    has_many :orders
    has_many :carts, through: :orders
    has_many :join_table_confirmedorder_cats
    has_many :confirmedorders, through: :join_table_confirmedorder_cats
end
