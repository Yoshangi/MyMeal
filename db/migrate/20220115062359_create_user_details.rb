class CreateUserDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :user_details do |t|
      t.string :type
      t.integer :age
      t.string :gender

      t.timestamps
    end
  end
end
