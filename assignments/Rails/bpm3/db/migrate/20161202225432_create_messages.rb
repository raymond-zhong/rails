class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :author
      t.string :message
      t.references :post, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
