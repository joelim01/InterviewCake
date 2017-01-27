def findPivot(array)
  first_half = "a,b,c,d,e,f,g,h,i,j,k,l,m"
  second_half = "n,o,p,q,r,s,t,u,v,w,x,y,z"
  min = 0
  max = array.length-1
  index = array.length/2

  while (first_half.include?(array[index][0]) && first_half.include?(array[index+1][0])) || (second_half.include?(array[index][0]) && second_half.include?(array[index+1][0]))
    if first_half.include?(array[index][0])
      max = index
      index = min+max/2
    elsif second_half.include?(array[index][0])
      min = index
      index = min+max/2
    end
  end
  return index + 1
end
