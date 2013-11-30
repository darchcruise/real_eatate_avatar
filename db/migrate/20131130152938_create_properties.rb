class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.integer :agent_id
      t.string :address
      t.string :neighborhood
      t.integer :price
      t.integer :common_charges
      t.integer :taxes
      t.float :deposit
      t.string :property_type
      t.string :bedrooms
      t.string :bathrooms
      t.string :feature1
      t.string :feature2
      t.string :feature3
      t.string :feature4
      t.string :feature5
      t.string :feature6
      t.string :feature7
      t.string :feature8
      t.string :feature9
      t.text :description
      t.attachment :avatar

      t.timestamps
    end
  end
end
