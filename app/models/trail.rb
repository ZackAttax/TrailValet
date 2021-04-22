class Trail < ApplicationRecord
  belongs_to :user
  has_many :maintenance_features
  has_many :users, through :maintenance_features
end
