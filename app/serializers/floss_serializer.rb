class FlossSerializer < ActiveModel::Serializer
    belongs_to :user

    attributes :id, :brand, :color, :amount
end