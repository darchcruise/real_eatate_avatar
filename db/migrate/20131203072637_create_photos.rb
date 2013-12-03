class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :avatar
      t.integer :property_id

      t.timestamps
    end
  end
end
