class RemoveMicroposts < ActiveRecord::Migration[6.1]
  def change
    drop_table :microposts
  end
end
