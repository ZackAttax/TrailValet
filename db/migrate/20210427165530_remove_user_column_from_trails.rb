class RemoveUserColumnFromTrails < ActiveRecord::Migration[6.1]
  def change
    remove_column :trails, :user_id
  end
end
