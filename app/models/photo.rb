class Photo < ActiveRecord::Base
  attr_accessible :avatar, :property_id
  belongs_to :property
  has_attached_file :avatar, :styles => { :large => "1500x1500>", :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
end


