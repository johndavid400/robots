class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :name
      t.string :type
      t.string :sensors
      t.string :build_time
      t.string :website
      t.string :cost
      t.integer :weight
      t.string :microcontroller
      t.string :power_source
      t.string :motors
      t.string :drive_type
      t.text :comments
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
