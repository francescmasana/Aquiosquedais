class CreateDangerousWastes < ActiveRecord::Migration
  def self.up
    create_table :dangerous_wastes do |t|
      t.integer :region_id
      t.float :value

      t.timestamps
    end
  end

  def self.down
    drop_table :dangerous_wastes
  end
end
