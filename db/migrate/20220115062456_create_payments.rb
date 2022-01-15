class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.string :status
      t.string :type

      t.timestamps
    end
  end
end
