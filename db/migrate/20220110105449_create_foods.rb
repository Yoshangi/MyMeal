class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :food_name
      t.text :description
      t.integer :calories

      t.timestamps
    end
  end
end
