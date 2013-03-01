require 'matrix'

X=3
Y=4

$count = 0

def traverse(matrix, i, j)
  if i == X && j == Y
    $count+=1
    return 
  else
    traverse(matrix, i+1, j) unless i+1>X
    traverse(matrix, i, j+1) unless j+1>Y
  end
end

grid = Matrix.build(X,Y)

traverse(grid, 0, 0)

puts $count

