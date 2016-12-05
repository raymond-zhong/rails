class UpdateUsersName < ActiveRecord::Migration
  def change
    rename_table :contents, :users
  #rename_table is the method of change, :contents is the old name, :users is the new name.
   end
  end
