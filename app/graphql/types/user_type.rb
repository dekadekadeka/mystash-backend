module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :username, String, null: false

    field :projects, [Types::ProjectType], null: false
    field :patterns, [Types::PatternType], null: false

    field :yarns, [Types::YarnType], null: false
    field :notions, [Types::NotionType], null: false
    field :fabrics, [Types::FabricType], null: false
    field :needles, [Types::NeedleType], null: false
    field :flosses, [Types::FlossType], null: false
  end
end
