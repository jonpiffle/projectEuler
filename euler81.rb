t0 = Time.now

N = 80

def find_min(input, i, j)
  path = Array.new(N) {Array.new(N) {0}}
  path[N-1][N-1] = input[N-1][N-1].to_i
  
  i = N-2
  while i >= 0 
    j = N-1
    while j >= i
        path[i][j] = surrounding(path,i,j)+input[i][j].to_i
        path[j][i] = surrounding(path,j,i)+input[j][i].to_i
      j-=1
    end
    i-=1
  end
  puts path[0][0]
end

def surrounding(a,i,j)
  if i<N-1 && j<N-1
    return min(a[i+1][j],a[i][j+1])
  elsif i == N-1 && j == N-1
    return 0
  elsif i == N-1
    return a[i][j+1]
  elsif j == N-1
    return a[i+1][j]
  end
end

def min(*args)
   args.min
end

def max(*args)
   args.max
end

input = Array.new(N) {Array.new(N)}
File.open("matrix.txt", "r").each_with_index do |matrix, i|
  input[i] = matrix.strip.split(',')
end

find_min(input, 0, 0)
puts (Time.now - t0).to_s + ' s'
