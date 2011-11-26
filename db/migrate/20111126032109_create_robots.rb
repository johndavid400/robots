class CreateRobots < ActiveRecord::Migration
  def self.up
    create_table :robots do |t|
      t.string :name
      t.integer :user_id
      t.string :type
      t.boolean :featured

      t.timestamps
    end
  end

  def self.down
    drop_table :robots
  end
end
