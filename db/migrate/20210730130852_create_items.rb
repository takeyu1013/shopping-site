class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.integer :stock
      t.string :image_url

      t.timestamps
    end
  end
end
