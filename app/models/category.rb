class Category < ActiveRecord::Base
  has_many :products
  acts_as_tree :order => "id"
end
