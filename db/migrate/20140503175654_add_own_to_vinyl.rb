class AddOwnToVinyl < ActiveRecord::Migration
  def change
    add_column :vinyls, :own, :boolean
  end
end
