class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.boolean :available
      t.date :start_avail
      t.date :finish_avail
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
