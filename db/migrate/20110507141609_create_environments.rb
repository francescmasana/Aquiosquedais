class CreateEnvironments < ActiveRecord::Migration
  def self.up
    create_table :environments do |t|
      t.integer :region_id
      t.float :value

      t.timestamps
    end
  end

  def self.down
    drop_table :environments
  end
end
