class MaintenanceFeature < ApplicationRecord
  validates :location, :issue, presence: true
  belongs_to :trail
  belongs_to :user
  has_many :tools
  

  def trail_name
    trail.name 
  end
  def attributes_string
    "Location: #{location}, Issue: #{issue}, Tools Needed: #{tools_needed}"
  end
  

end
