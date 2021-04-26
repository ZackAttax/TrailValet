class Trail < ApplicationRecord
  #validates :name, :location, presence: true
  #validates :name, uniqueness: true
  has_many :maintenance_features
  has_many :users, through: :maintenance_features
end
