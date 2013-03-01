t0 = Time.now

def sort_digits(n)
  n.to_s.chars.sort.join
end

def check_six(n)
  for i in 2..5
    if sort_digits(n) != sort_digits(i*n)
      return false
    end
  end
  return true
end

i=1
while(!check_six(i))
  i+=1
end

puts i

puts (Time.now-t0).to_s + " s"
