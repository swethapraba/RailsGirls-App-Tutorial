class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :item
      t.text :category
      t.string :quantity
      t.text :description

      t.timestamps null: false
    end
  end
end
