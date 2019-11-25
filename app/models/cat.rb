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
end
