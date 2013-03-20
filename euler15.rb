#DYNAMIC PROGRAMMING SOLUTION
t0 = Time.now

X = 20 
Y = 20

a = Array.new(X+1) {Array.new(Y+1) {0}}
for i in 0..X 
  a[i][Y] = 1
end

for j in 0..Y
  a[X][j] = 1
end


(X-1).downto(0) do |i|
  (Y-1).downto(0) do |j|
    a[i][j] = a[i+1][j] + a[i][j+1]
  end
end
puts a[0][0]
puts "#{Time.now-t0} s"


#RECURSIVE
=begin
t0 = Time.now
$count = 0
def traverse(i,j)
  if i==X && j==Y
    $count +=1
    return
  end
  traverse(i+1,j) if i < X
  traverse(i, j+1) if j < Y
end

traverse(0,0)
puts $count
puts "#{Time.now-t0} s"
=end
