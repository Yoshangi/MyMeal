class DroppaymentsUsers < ActiveRecord::Migration[7.0]
  def change
    drop_table :payments_users
  end
end