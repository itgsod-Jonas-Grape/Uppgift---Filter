def filters(list:, value:)
   nylista = []
    list.each do |i|
       if i == value
         nylista << i
       end
    end
  return nylista
end

p filters(list:[1,2,2,3,4,5,7] , value:2)

def exclude(list:, value:)
  nylista = []
  list.each do |i|
    if i != value
      nylista << i
    end
  end
  return nylista
end

p exclude(list:[1,2,2,3,4,5,7] , value:2)

def unique(list:)
    comprlist = [nil]
    list.each do |i|
      check = 0
      comprlist.each do |compr|
        if i != compr
          check += 1
        end
      end
      if check == comprlist.length
        comprlist << i
      end
    end
    comprlist.shift
    return comprlist
end

p unique(list:[1,2,3,3,3,3,4,5,6,7,8,9,10])