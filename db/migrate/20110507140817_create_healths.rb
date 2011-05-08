class CreateHealths < ActiveRecord::Migration
  def self.up
    create_table :healths do |t|
      t.integer :region_id
      t.float :value

      t.timestamps
    end
  end

  def self.down
    drop_table :healths
  end
end
