class AddTaskCompletedToMaintenanceFeatures < ActiveRecord::Migration[6.1]
  def change
    add_column :maintenance_features, :task_completed, :boolean, default: false
  end
end
