class Photo < ActiveRecord::Base
  belongs_to :product
  has_attached_file :data, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
