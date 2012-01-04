class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :pagetitle
      t.text :description
      t.text :content
      t.integer :priority
      t.integer :parent_id

      t.timestamps
    end
  end
end
