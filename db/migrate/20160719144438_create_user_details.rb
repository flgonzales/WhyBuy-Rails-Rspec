class CreateUserDetails < ActiveRecord::Migration
  def change
    create_table :user_details do |t|
      t.string :username
      t.string :name_first
      t.string :name_last
      t.string :zipcode
      t.string :address_st
      t.integer :address_hno
      t.string :address_cpm
      t.string :city
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
