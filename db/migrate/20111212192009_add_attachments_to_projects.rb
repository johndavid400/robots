class AddAttachmentsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :attachment_uid, :integer
    add_column :projects, :attachment_name, :string
  end
end
