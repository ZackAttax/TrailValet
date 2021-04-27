class RemoveLoginSocialFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :login_social
  end
end
