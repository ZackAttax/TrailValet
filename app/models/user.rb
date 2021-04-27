class User < ApplicationRecord
    validates :email, uniqueness: true
    has_many :maintenance_features
    has_many :tools
    has_many :comments
    has_many :trails, through: :maintenance_features
    has_secure_password

end
