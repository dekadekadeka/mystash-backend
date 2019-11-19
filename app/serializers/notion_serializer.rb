class NotionSerializer < ActiveModel::Serializer
    belongs_to :user

    attributes :id, :name, :brand, :size, :color, :description
end