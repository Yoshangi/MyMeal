class CreateWorkoutSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :w_schedules do |t|
      t.string :name
      t.text :description
      t.string :age_group
      t.string :suitable_gender

      t.timestamps
    end
  end
end
