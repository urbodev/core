class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.boolean :active, default: false

      t.timestamps null: false
    end
    add_index :products, :name, unique: true
  end
end
