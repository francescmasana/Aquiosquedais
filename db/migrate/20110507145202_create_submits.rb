class CreateSubmits < ActiveRecord::Migration
  def self.up
    create_table :submits do |t|
      t.integer :region_from_id
      t.integer :region_result_id
      t.string :ip
      t.integer :culture
      t.integer :dangerous_waste
      t.integer :economy
      t.integer :education
      t.integer :environment
      t.integer :health
      t.integer :immigration
      t.integer :social_protection
      t.integer :unemployment

      t.timestamps
    end
  end

  def self.down
    drop_table :submits
  end
end
