class AddAttachmentAvatarToAgents < ActiveRecord::Migration
  def self.up
    change_table :agents do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :agents, :avatar
  end
end
