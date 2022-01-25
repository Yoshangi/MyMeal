class DropuserDetailsUsers < ActiveRecord::Migration[7.0]
  def change
    drop_table :user_details_users
  end
end
