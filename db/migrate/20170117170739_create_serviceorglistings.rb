class CreateServiceorglistings < ActiveRecord::Migration
  def change
    create_table :serviceorglistings do |t|
      t.string :name
      t.text :address
      t.string :website
      t.string :phone
      t.boolean :nonperishables
      t.boolean :freshFoods
      t.boolean :refridgeratedFoods
      t.boolean :frozenFoods
      t.boolean :cookedFoods
      t.text :hours
      t.text :otherInformation

      t.timestamps null: false
    end
  end
end
