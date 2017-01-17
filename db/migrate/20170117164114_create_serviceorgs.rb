class CreateServiceorgs < ActiveRecord::Migration
  def change
    create_table :serviceorgs do |t|
      t.string :name
      t.text :address
      t.string :website
      t.string :phone
      t.boolean :nonperishables
      t.boolean :fresh
      t.boolean :refridgerated
      t.boolean :frozen
      t.boolean :cooked
      t.text :hours
      t.text :otherInfo

      t.timestamps null: false
    end
  end
end
