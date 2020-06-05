module Types
  class FabricType < Types::BaseObject
    field :id, ID, null: false
    field :fabric_type, String, null: false
    field :color, String, null: false
    field :size, String, null: true
    field :description, String, null: true
    field :name, String, null: false

    field :user, Types::UserType, null: false
  end
end
