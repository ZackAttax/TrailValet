class MaintenanceFeature < ApplicationRecord
  belongs_to :trail
  has_many :tools
  has_many :user
end
