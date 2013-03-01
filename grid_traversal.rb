require 'rubygems'
require 'tree'

X = 10
Y = 4

#given a point in a grid, return all adjacent squares
def surrounding_squares(x,y)
  squares = Array.new
  
  unless x == 0
    squares.push([x-1,y])
  end
  unless x == X-1
    squares.push([x+1,y])
  end
  unless y == 0
    squares.push([x,y-1])
  end
  unless y == Y-1
    squares.push([x,y+1])
  end
  return squares
end

#given two nodes determine if the first is an ancestor of the second
def is_ancestor(x,y, node)
  node.parentage.each do |p|
    if p.content[0] == x && p.content[1] == y
     return true
    end
  end
  return false
end

#given a node, make a child for every adjacent square
def add_positions_to_tree(node, x,y)
    node << Tree::TreeNode.new("#{x},#{y}", [x,y])

    #unless the current square is the final square
    unless y == Y-1 && x == 0
      surrounding_squares(x,y).each do |s|
        #unless the surrounding square is an ancestor of the current square
        unless is_ancestor(s[0],s[1], node["#{x},#{y}"])
          add_positions_to_tree(node["#{x},#{y}"], s[0],s[1])
        end
      end
    end
end

root = Tree::TreeNode.new("ROOT", [0,0])

surrounding_squares(root.content[0], root.content[1]).each do |s|
  add_positions_to_tree(root, s[0],s[1])
end

#get count (any leaf that is the bottom left square)
count = 0
root.each_leaf do |l|
  if l.content[0] == 0 && l.content[1] == Y-1
    count += 1
  end
end

puts count


