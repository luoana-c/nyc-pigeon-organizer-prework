def nyc_pigeon_organizer(data)
  pigeons = data[:gender][:male] + data[:gender][:female]
  
  pigeon_list = {}
  pigeons.each do |pigeon|
    pigeon_list[pigeon] = {}
  end
  pigeon_list.each do |pigeon, details|
    details[:color] = []
    details[:gender] = []
    details[:lives] = []
  end
  pigeons.each do |pigeon|
    data.each do |property, type|
      type.each do |attribute, names|
        if names.include?(pigeon) 
          pigeon_list[pigeon][property].push(attribute.to_s)
        end
      end
    end   
  end
  pigeon_list
end