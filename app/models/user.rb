class User < ApplicationRecord
    validates :username, uniqueness: true

    has_many :patterns
    has_many :notions
    has_many :yarns
    has_many :fabrics
end
