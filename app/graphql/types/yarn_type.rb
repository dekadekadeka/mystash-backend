module Types
  class YarnType < Types::BaseObject
    field :id, ID, null: false
    field :brand, String, null: false
    field :name, String, null: false
    field :color, String, null: false
    field :size, String, null: false
    field :lot, String, null: true
    field :pic, String, null: true

    field :user, Types::UserType, null: false
  end
end
