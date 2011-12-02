class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :title
      t.text :text
      t.integer :user_id
      t.integer :robot_id
      t.integer :project_id
      t.boolean :featured

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
