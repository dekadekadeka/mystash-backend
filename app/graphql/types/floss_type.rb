module Types
  class FlossType < Types::BaseObject
    field :id, ID, null: false
    field :brand, String, null: false
    field :color, String, null: false
    field :amount, String, null: false

    field :user, Types::UserType, null: false
  end
end
