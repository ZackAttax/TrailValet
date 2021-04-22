class Tool < ApplicationRecord
  belongs_to :user
  has_many :maintenance_features
end
