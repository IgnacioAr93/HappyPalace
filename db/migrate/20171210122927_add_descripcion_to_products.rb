class AddDescripcionToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :descripcion, :string
  end
end
