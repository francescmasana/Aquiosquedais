class CreateImmigrations < ActiveRecord::Migration
  def self.up
    create_table :immigrations do |t|
      t.integer :region_id
      t.float :value

      t.timestamps
    end
  end

  def self.down
    drop_table :immigrations
  end
end
