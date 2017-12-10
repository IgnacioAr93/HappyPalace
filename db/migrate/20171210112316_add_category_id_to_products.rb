class AddCategoryIdToProducts < ActiveRecord::Migration[5.1]
  def change
  	add_column :products, :category_id, :integer
  	add_column :products, :stock, :integer
  end
end
