class Item < ApplicationRecord
    belongs_to :user
    validates :name, :price, presence: true

    def claim_item(user_id)
        if claimed_by == nil
            self.claimed_by = user_id
            self.save
        else
            return 'Item has already been claimed.'
        end
    end


end
