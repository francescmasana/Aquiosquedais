class CreateEducations < ActiveRecord::Migration
  def self.up
    create_table :educations do |t|
      t.integer :region_id
      t.float :value

      t.timestamps
    end
  end

  def self.down
    drop_table :educations
  end
end
