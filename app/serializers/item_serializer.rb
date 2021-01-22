class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :claimed_by, :picture, :price, :user_id
end

