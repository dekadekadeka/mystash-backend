module Types
  class NeedleType < Types::BaseObject
    field :id, ID, null: false
    field :needle_type, String, null: false
    field :size, String, null: false

    field :user, Types::UserType, null: false
  end
end
