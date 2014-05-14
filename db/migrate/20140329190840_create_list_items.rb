class CreateListItems < ActiveRecord::Migration
  def change
    create_table :list_items do |t|
      t.integer :list_id
      t.integer :vinyl_id
      t.integer :cost
      t.string :seller
      t.string :condition
      t.string :notes

      t.timestamps
    end
  end
end
