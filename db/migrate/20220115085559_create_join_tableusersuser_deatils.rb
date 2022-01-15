class CreateJoinTableusersuserDeatils < ActiveRecord::Migration[7.0]
  def change
    create_join_table :users, :user_details do |t|
      t.index [:user_id, :user_detail_id]
      t.index [:user_detail_id, :user_id]
    end
  end
end
