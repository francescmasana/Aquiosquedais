class AddPrecalculatedFieldsToRegion < ActiveRecord::Migration
  def self.up
    add_column :regions, :preculture, :float
    add_column :regions, :predangerous_waste, :float
    add_column :regions, :preeconomy, :float
    add_column :regions, :preeducation, :float
    add_column :regions, :preenvironment, :float
    add_column :regions, :prehealth, :float
    add_column :regions, :preimmigration, :float
    add_column :regions, :presocial_protection, :float
    add_column :regions, :preunemployment, :float
  end

  def self.down
    remove_column :regions, :preunemployment
    remove_column :regions, :presocial_protection
    remove_column :regions, :preimmigration
    remove_column :regions, :prehealth
    remove_column :regions, :preenvironment
    remove_column :regions, :preeducation
    remove_column :regions, :preeconomy
    remove_column :regions, :predangerous_waste
    remove_column :regions, :preculture
  end
end
