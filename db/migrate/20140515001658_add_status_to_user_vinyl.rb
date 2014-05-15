class AddStatusToUserVinyl < ActiveRecord::Migration
  def change
    add_column :user_vinyls, :status, :string
  end
end
