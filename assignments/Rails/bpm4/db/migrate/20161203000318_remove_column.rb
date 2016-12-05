class RemoveColumn < ActiveRecord::Migration
  def change
    remove_column :owners, :title
    remove_column :owners, :content
  end
end
