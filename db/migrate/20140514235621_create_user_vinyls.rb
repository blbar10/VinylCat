class CreateUserVinyls < ActiveRecord::Migration
  def change
    create_table :user_vinyls do |t|
      t.references :user, index: true
      t.references :vinyl, index: true
      t.string :condition
      t.string :comments

      t.timestamps
    end
  end
end
