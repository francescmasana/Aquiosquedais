class Submit < ActiveRecord::Base
	belongs_to :region_from, :class_name => 'Region', :foreign_key => 'region_from_id'
	belongs_to :region_result, :class_name => 'Region', :foreign_key => 'region_result_id'
  
  	def self.CalculateBestRegion(culture, dangerous_waste, economy, education, environment, health, immigration, social_protection, unemployment)
		regionsvalue = Hash.new
		Region.all.each do |region|
			regionsvalue[region.id] = region.CalculateRegionValue(culture, dangerous_waste, economy, education, environment, health, immigration, social_protection, unemployment)
		end 
		returnvalue = regionsvalue.sort_by { |key,value| -value }.first		
		return returnvalue.first
	end
end