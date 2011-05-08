class Immigration < ActiveRecord::Base
  belongs_to :region
  def self.ponderation
    a=Immigration.all
    maxim=a.map{|u|u.value/u.region.population}.max
    minim=a.map{|u|u.value/u.region.population}.min
    a.each do |b|
      b.region.preimmigration=((b.value/b.region.population)-minim)/(maxim-minim)*100
      b.region.save
    end
  end
end
