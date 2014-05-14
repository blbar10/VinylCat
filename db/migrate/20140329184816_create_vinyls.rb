class CreateVinyls < ActiveRecord::Migration
  def change
    create_table :vinyls do |t|
      t.string :artist
      t.string :album
      t.string :year
      t.string :condition

      t.timestamps
    end
  end
end
