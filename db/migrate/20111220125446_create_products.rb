class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :pagetitle
      t.string :description
      t.text :content
      t.integer :price_from
      t.integer :price_to

      t.timestamps
    end
  end
end
