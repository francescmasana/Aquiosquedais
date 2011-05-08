class Economy < ActiveRecord::Base
  belongs_to :region
  def self.ponderation
    a=Economy.all
    maxim=a.map{|u|u.value}.max
    minim=a.map{|u|u.value}.min
    a.each do |b|
      b.region.preeconomy=(b.value-minim)/(maxim-minim)*100
      b.region.save
      
    end
    
  end
end
