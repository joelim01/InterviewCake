def secondLargest(node, last=nil, largest=nil)
  if (node.right.nil? || node.left.nil?) && last.nil?
    puts "Gotta have at least 3 nodes."
    return false
  elsif node.right
    last = node.value
    secondLargest(node.right, last, largest)
  elsif node.left
    largest = node.value
    secondLargest(node.left, last, largest)
  elsif node.left.nil? && node.right.nil?
    if !largest.nil?
      return node.value
    else
      return last
    end
  end
end
