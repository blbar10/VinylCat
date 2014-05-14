class AddGenreToVinyl < ActiveRecord::Migration
  def change
    add_column :vinyls, :genre, :string
  end
end
