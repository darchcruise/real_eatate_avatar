class Property < ActiveRecord::Base
  attr_accessible :avatar, :agent_id, :address, :neighborhood, :price, :common_charges, :taxes, :deposit, :property_type, :bedrooms, :bathrooms, :feature1, :feature2, :description, :photos_attributes, :photos
  belongs_to :agent
  has_attached_file :avatar, :styles => { :large => "1500x1500>", :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  has_many :photos
  accepts_nested_attributes_for :photos, :allow_destroy => true
end


