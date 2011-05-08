class CreateUnemployments < ActiveRecord::Migration
  def self.up
    create_table :unemployments do |t|
      t.integer :region_id
      t.float :value

      t.timestamps
    end
  end

  def self.down
    drop_table :unemployments
  end
end
