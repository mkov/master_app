class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :pagetitle
      t.string :description
      t.text :content
      t.text :contacts
      t.string :site
      t.string :email
      t.integer :priority

      t.timestamps
    end
  end
end
