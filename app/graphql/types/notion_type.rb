module Types
  class NotionType < Types::BaseObject
    field :id, ID, null: false
    field :brand, String, null: false
    field :size, String, null: false
    field :description, String, null: false
    field :color, String, null: false

    field :user, Types::UserType, null: false
  end
end
