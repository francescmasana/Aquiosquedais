class CreateCultures < ActiveRecord::Migration
  def self.up
    create_table :cultures do |t|
      t.integer :region_id
      t.float :value

      t.timestamps
    end
  end

  def self.down
    drop_table :cultures
  end
end
