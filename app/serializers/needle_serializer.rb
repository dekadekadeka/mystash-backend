class NeedleSerializer < ActiveModel::Serializer
    belongs_to :user

    attributes :id, :needle_type, :size
end