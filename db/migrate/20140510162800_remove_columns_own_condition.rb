class RemoveColumnsOwnCondition < ActiveRecord::Migration
  def change
    remove_column :vinyls, :own
    remove_column :vinyls, :condition
  end
end
