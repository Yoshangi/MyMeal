class CreateJoinTableuserspayment < ActiveRecord::Migration[7.0]
  def change
    create_join_table :users, :payments do |t|
      t.index [:user_id, :payment_id]
      t.index [:payment_id, :user_id]
    end
  end
end
