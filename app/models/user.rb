class User < ApplicationRecord
    has_many  :maintenance_features
    has_many :tools
    has_many :comments
end
