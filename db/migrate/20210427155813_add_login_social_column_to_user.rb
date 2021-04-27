class AddLoginSocialColumnToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :login_social, :boolean, default: false
  end
end
