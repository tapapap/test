a = gets.split
b = Array.new
a.each do |c|
	case c
		when '+','-','*','/' then 
		  x, y = b.pop(2)
		  b.push(x.method(c).call(y))
	  else
		  b.push(c.to_i)
		end
  puts b.join(' ')	
end
