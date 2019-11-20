class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: true

    has_many :projects
    has_many :patterns, through: :projects
    
    has_many :yarns
    has_many :notions
    has_many :fabrics
end
