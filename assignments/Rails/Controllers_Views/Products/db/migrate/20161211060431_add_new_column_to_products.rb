class AddNewColumnToProducts < ActiveRecord::Migration
  def change
    add_column :products, :category_id, :integer
  end
end
