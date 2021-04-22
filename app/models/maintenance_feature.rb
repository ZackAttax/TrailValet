class MaintenanceFeature < ApplicationRecord
  belongs_to :trail
  belongs_to :user
  has_many :tools
  #has_one :user
end
