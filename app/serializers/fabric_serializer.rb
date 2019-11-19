class FabricSerializer < ActiveModel::Serializer
    belongs_to :user

    attributes :id, :fabric_type, :color, :size, :description, :name, :pic
end