class DangerousWaste < ActiveRecord::Base
  belongs_to :region

  def self.ponderation
    a=DangerousWaste.all
    maxim=a.map{|u|u.value}.max
    minim=a.map{|u|u.value}.min
    a.each do |b|
      b.region.predangerous_waste=(b.value-minim)/(maxim-minim)*100
      b.region.save
    end
    
  end


end
