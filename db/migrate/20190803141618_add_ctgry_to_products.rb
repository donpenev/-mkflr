class AddCtgryToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :ctgry, :string
  end
end
