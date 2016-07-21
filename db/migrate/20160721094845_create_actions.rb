class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.references :user, index: true, foreign_key: true
      t.references :item, index: true, foreign_key: true
      t.string :owner

      t.timestamps null: false
    end
  end
end
