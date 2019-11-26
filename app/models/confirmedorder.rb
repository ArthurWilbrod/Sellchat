class Confirmedorder < ApplicationRecord
    has_many :join_table_confirmedorder_cats
    has_many :cats, through: :join_table_confirmedorder_cats
    belongs_to :user
end
