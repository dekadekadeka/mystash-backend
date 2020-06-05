module Types
  class ProjectType < Types::BaseObject
    field :pattern, Types::PatternType, null: false
    field :user, Types::UserType, null: false
  end
end
