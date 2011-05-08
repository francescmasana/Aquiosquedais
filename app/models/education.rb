class Education < ActiveRecord::Base
  belongs_to :region
  def self.ponderation
    a=Education.all
    maxim=a.map{|u|u.value/u.region.population}.max
    minim=a.map{|u|u.value/u.region.population}.min
    a.each do |b|
      b.region.preeducation=((b.value/b.region.population)-minim)/(maxim-minim)*100
      b.region.save
    end
    
  end
end
