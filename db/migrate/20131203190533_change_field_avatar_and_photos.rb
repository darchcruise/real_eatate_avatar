class ChangeFieldAvatarAndPhotos < ActiveRecord::Migration
  def up
    remove_column :photos, :avatar
    add_attachment :photos, :avatar
  end

  def down
    add_column :photos, :avatar, :string
    remove_attachment :photos, :avatar
  end
end
