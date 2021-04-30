class MaintenanceFeature < ApplicationRecord
  validates :location, :issue, presence: true
  belongs_to :trail
  belongs_to :user
  has_many :tools
  scope :needs_attention, -> { where(task_completed: false) }
  scope :task_completed, -> { where(task_completed: true) }
  

  def trail_name
    trail.name 
  end
  def attributes_string
    "Location: #{location}, Issue: #{issue}, Tools Needed: #{tools_needed}, Task Status: #{task_status}"
  end

  def task_status
    if task_completed
      "Task Completed"
    else
      "Needs Attention"
    end
  end
  

end
