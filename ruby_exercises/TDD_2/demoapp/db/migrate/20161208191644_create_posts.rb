class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :content
      t.string :reference
      t.string :User

      t.timestamps
    end
  end
end
