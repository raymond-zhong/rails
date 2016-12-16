class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.string :location
      t.string :host
      t.string :action

      t.timestamps
    end
  end
end
