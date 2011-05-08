class WelcomeController < ApplicationController
	def index
	end

	def submit
		 if params[:region_from_value].present? and params[:slider0_value].present? and params[:slider1_value].present? and params[:slider2_value].present? and params[:slider3_value].present? and params[:slider4_value].present? and params[:slider5_value].present? and params[:slider6_value].present? and params[:slider7_value].present? and params[:slider8_value].to_i 
			if params[:slider0_value].to_i + params[:slider1_value].to_i + params[:slider2_value].to_i + params[:slider3_value].to_i + params[:slider4_value].to_i + params[:slider5_value].to_i + params[:slider6_value].to_i + params[:slider7_value].to_i + params[:slider8_value].to_i  == 45			
				region_result_id = Submit.CalculateBestRegion(params[:slider0_value].to_i, params[:slider1_value].to_i, params[:slider2_value].to_i, params[:slider3_value].to_i, params[:slider4_value].to_i, params[:slider5_value].to_i, params[:slider6_value].to_i, params[:slider7_value].to_i, params[:slider8_value].to_i)
				@submit = Submit.create(   :region_from_id => params[:region_from_value].to_i,
									    :region_result_id => region_result_id,
									    :ip => request.remote_ip,
									    :culture => params[:slider0_value].to_i,
									    :dangerous_waste => params[:slider1_value].to_i,
									    :economy => params[:slider2_value].to_i,
									    :education => params[:slider3_value].to_i,
									    :environment => params[:slider4_value].to_i,
									    :health => params[:slider5_value].to_i,
									    :immigration => params[:slider6_value].to_i,
									    :social_protection => params[:slider7_value].to_i,
									    :unemployment => params[:slider8_value].to_i
				)
				redirect_to :action => "result", :id => @submit.id
			end
		end
	end
	def result
		if params[:id].present? 
			@submit = Submit.find_by_id(params[:id].to_i)
			@results = Hash.new
			Region.all.each do |region|
				hr = Hash.new
				Submit.find(:all, :conditions => ['region_from_id like ?', region.id]).group_by{|s| s.region_result_id}.each do |key, group|
					hr[key] = group.count
				end

				if hr.count > 0
					@results[region] = Region.find_by_id(hr.sort.last.first)
				else
					@results[region] = false
				end
			end
		end
	end
end
