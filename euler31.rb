#Jon Pfeil
#Project Euler Problem 31

  CURRENCY = [200, 100, 50, 20, 10, 5, 2, 1]
  TOTAL = 200
  count = 0

  def find_combinations(i, total)
    if total == TOTAL
      return 1 
    elsif total > TOTAL
      return 0
    else
      num = 0
      for k in i..CURRENCY.length-1
        num += find_combinations(k, total + CURRENCY[k])
      end
      return num 
    end
  end 

  for i in 0..CURRENCY.length-1
    count += find_combinations(i, CURRENCY[i])   
  end

  puts count
