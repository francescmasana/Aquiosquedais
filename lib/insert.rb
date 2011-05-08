    NUM_OPTIONS = 9
    INT_STEP = 3
    
    i1= 0
    while i1 < NUM_OPTIONS  do
        i2= 0
        while i2 < NUM_OPTIONS  do
            i3= 0
            while i3 < NUM_OPTIONS  do
                i4= 0
                while i4 < NUM_OPTIONS  do
                    i5= 0
                    while i5 < NUM_OPTIONS  do
                        i6= 0
                        while i6 < NUM_OPTIONS  do
                            i7= 0
                            while i7 < NUM_OPTIONS  do
                                i8= 0
                                while i8 < NUM_OPTIONS  do
                                    i9= 0
                                    while i9 < NUM_OPTIONS  do
                                        region_result_id = Submit.CalculateBestRegion(i1, i2, i3, i4, i5, i6, i7, i8, i9)
                                        region = Region.find_by_id(region_result_id)
                                        puts "#{i1} #{i2} #{i3} #{i4} #{i5} #{i6} #{i7} #{i8} #{i9} "
                                        puts region.name
                                        Submit.create(
                                            :region_from_id => 0,
                                            :region_result_id => region_result_id,
                                            :ip => '',
                                            :culture => i1,
                                            :dangerous_waste => i2,
                                            :economy => i3,
                                            :education => i4,
                                            :environment => i5,
                                            :health => i6,
                                            :immigration => i7,
                                            :social_protection => i8,
                                            :unemployment => i9
                                        )
                                        i9 = i9 + INT_STEP
                                    end                               
                                    i8 = i8 + INT_STEP
                                end                           
                                i7 = i7 + INT_STEP
                            end                       
                            i6 = i6 + INT_STEP
                        end                   
                        i5 = i5 + INT_STEP
                    end               
                    i4 = i4 + INT_STEP
                end           
                i3 = i3 + INT_STEP
            end       
            i2 = i2 + INT_STEP
        end
        i1 = i1 + INT_STEP
    end