class AddDetailsToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :name, :string
    add_column :products, :price, :float
    add_column :products, :size, :integer
    add_column :products, :webcolour, :string
  end
end
