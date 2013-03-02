for a in 1..1000
  for b in (a)..1000
    if a**2 + b**2 == (1000-a-b)**2
     puts a*b*(1000-a-b)
     puts "#{a} #{b} #{1000-a-b}"
     break
    end
  end
end

