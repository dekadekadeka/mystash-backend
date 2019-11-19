class PatternSerializer < ActiveModel::Serializer
    has_many :projects
    has_many :users, through: :projects

    attributes :id, :brand, :number, :front_pic, :back_pic
end