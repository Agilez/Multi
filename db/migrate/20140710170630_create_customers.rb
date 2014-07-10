class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :store_id
      t.string :name
      t.string :email
      t.string :encrypted_password

      t.timestamps
    end
  end
end
