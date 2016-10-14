class AddForeignKeyToProducts < ActiveRecord::Migration[5.0]
  def change
  	add_foreign_key :products, :categories
  end
end
