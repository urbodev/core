class CreateProductTypes < ActiveRecord::Migration
  def change
    create_table :product_types do |t|
      t.string :name
      t.string :display_name
      t.boolean :active, default: true

      t.timestamps null: false
    end
  end
end
