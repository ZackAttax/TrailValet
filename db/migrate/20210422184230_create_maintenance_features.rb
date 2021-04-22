class CreateMaintenanceFeatures < ActiveRecord::Migration[6.1]
  def change
    create_table :maintenance_features do |t|
      t.string :location
      t.string :issue
      t.string :tools_needed
      t.belongs_to :trail, null: false, foreign_key: true

      t.timestamps
    end
  end
end
