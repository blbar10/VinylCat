class CreateVinylWikis < ActiveRecord::Migration
  def change
    create_table :vinyl_wikis do |t|
      t.integer :vinyl_id

      t.timestamps
    end
  end
end
