class CreateMealPlans < ActiveRecord::Migration[7.0]
  def change
    create_table :meal_plans do |t|
      t.string :type
      t.string :name
      t.string :age_group
      t.string :suitable_gender
      t.boolean :suitable_for_diabetes

      t.timestamps
    end
  end
end
