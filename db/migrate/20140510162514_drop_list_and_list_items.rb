class DropListAndListItems < ActiveRecord::Migration
  def change
    drop_table :lists
    drop_table :list_items
  end
end
