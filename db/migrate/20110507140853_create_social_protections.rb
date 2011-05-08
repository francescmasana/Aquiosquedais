class CreateSocialProtections < ActiveRecord::Migration
  def self.up
    create_table :social_protections do |t|
      t.integer :region_id
      t.float :value

      t.timestamps
    end
  end

  def self.down
    drop_table :social_protections
  end
end
