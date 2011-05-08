class Region < ActiveRecord::Base
  has_one :culture
  has_one :dangerous_waste
  has_one :economy
  has_one :education
  has_one :environment
  has_one :health
  has_one :immigration
  has_one :social_protection
  has_one :unemployment
  
	def CalculateRegionValue(culture, dangerous_waste, economy, education, environment, health, immigration, social_protection, unemployment)
		return	self.preculture * (culture - 5) + 
				self.predangerous_waste * (dangerous_waste  - 5) +
				self.preeconomy * (economy  - 5) +
				self.preeducation * (education  - 5) +
				self.preenvironment * (environment  - 5) +
				self.prehealth * (health  - 5) +
				self.preimmigration * (immigration  - 5) +
				self.presocial_protection * (social_protection  - 5) +
				self.preunemployment * (unemployment - 5) 
	end
	  
	def CalculateTotalValue
		return self.CalculateRegionValue(1, 1, 1, 1, 1, 1, 1, 1, 1)
	end		
			
end
