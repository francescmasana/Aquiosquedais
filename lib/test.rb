Region.all.each do |region|
	
	hr = Hash.new
	Submit.find(:all, :conditions => ['region_from_id like ?', region.id]).group_by{|s| s.region_result_id}.each do |key, group|
		hr[key] = group.count
	end

	if hr.count > 0 
		puts region.name + ' => ' + Region.find_by_id(hr.sort.last.first).name
	else
		puts region.name + ' => ' + 'No hay datos'
	end
end