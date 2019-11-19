class YarnSerializer < ActiveModel::Serializer
    belongs_to :user

    attributes :id, :brand, :name, :color, :size, :lot, :pic
end