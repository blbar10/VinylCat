class ChangeDataTypeForOwn < ActiveRecord::Migration
  def self.up
    change_table :vinyls do |t|
      t.change :own, :boolean, default: false
  end
end

  def self.down
    change_table :vinyls do |t|
      t.change :own, :boolean
  end
end
end
