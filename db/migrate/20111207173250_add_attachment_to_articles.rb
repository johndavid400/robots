class AddAttachmentToArticles < ActiveRecord::Migration
  def self.up
    add_column :articles, :attachment_uid, :string
    add_column :articles, :attachment_name, :string
  end

  def self.down
    remove_column :articles, :attachment_name
    remove_column :articles, :attachment_uid
  end
end
