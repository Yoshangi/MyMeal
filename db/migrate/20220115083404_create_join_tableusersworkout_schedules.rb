class CreateJoinTableusersworkoutSchedules < ActiveRecord::Migration[7.0]
  def change
    create_join_table :users, :w_schedules do |t|
      t.index [:user_id, :w_schedule_id]
      t.index [:w_schedule_id, :user_id]
    end
  end
end
