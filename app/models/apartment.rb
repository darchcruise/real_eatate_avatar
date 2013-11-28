class Apartment < ActiveRecord::Base
  attr_accessible :avatar, :agent_id, :address, :neighborhood, :price, :common_charges, :taxes, :deposit, :property_type, :bedrooms, :bathrooms, :feature1, :feature2, :description
  belongs_to :agent
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
end
