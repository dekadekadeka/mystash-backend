class ProjectSerializer < ActiveModel::Serializer
    belongs_to :user
    belongs_to :pattern

    attributes :id, :user_id, :pattern_id
end