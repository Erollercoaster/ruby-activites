def century_from_year(year)
    century = year / 100
  
    century += 1 if year % 100 != 0
  
    return century
  end

  # Test cases
  puts century_from_year(1705)
  puts century_from_year(1900)
  puts century_from_year(1601)
  puts century_from_year(2000)