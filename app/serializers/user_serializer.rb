class UserSerializer < ActiveModel::Serializer
    has_many :projects
    has_many :patterns, through: :projects
    
    has_many :yarns
    has_many :notions
    has_many :fabrics
    has_many :flosses
    has_many :needles

    attributes :id, :name, :username
end