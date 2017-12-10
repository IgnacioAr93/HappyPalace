class AddColumnDescripcionToCategory < ActiveRecord::Migration[5.1]
  def change
  	add_column :categories, :descripcion, :string
  end
end
