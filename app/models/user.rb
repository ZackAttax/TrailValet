class User < ApplicationRecord
    has_many :maintenance_features
    has_many :tools
    has_many :comments
    has_many :trails
    has_secure_password
end
