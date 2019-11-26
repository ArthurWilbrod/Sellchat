class JoinTableConfirmedorderCat < ApplicationRecord
    belongs_to :confirmedorder
    belongs_to :cat
end
