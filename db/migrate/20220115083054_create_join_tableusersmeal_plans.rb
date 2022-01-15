class CreateJoinTableusersmealPlans < ActiveRecord::Migration[7.0]
  def change
    create_join_table :users, :meal_plans do |t|
      t.index [:user_id, :meal_plan_id]
      t.index [:meal_plan_id, :user_id]
    end
  end
end
