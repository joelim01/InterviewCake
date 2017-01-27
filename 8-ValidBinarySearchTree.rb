
def BSTcheck(root_node)
  #create an array that will hold our nodes and the current min and max values for those nodes
  nodes_and_bounds = []
  #start with an arbitrarily high max and low min
  nodes_and_bounds.push([root_node, -Float::INFINITY, Float::INFINITY])

  #check all nodes in the tree
  while !nodes_and_bounds.empty?
    #grab a node and bounds from the array
    node, lower_bound, upper_bound = nodes_and_bounds.pop

    #if the value of the node is larger than max or smaller than min,
    #then this is not a BST
    if (node.value < lower_bound) || (node.value > upper_bound)
      return false
    end

    #if there are nodes to the left or right, check them
    if node.left
      nodes_and_bounds.push([node.left, lower_bound, node.value])
    end

    if node.right
      nodes_and_bounds.push([node.right, node.value, upper_bound])
    end

  end
  #if we check all nodes in the tree without violating the rules we have a BST
  return true
end

def recBSTcheck(node, min, max)

  if node.nil?
    return true
  end

  if (node.value < min) || (node.value > max)
    return false
  end

  return (recBSTcheck(node.left, min, node.value) &&
      recBSTcheck(node.right, node.value, max))

end
