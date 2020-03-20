def stock_picker (array)
	index_of_buy = 0
	index_of_sell = 0
	biggest_diff=array[1]-array[0]
	array.each_with_index do |buy, i|
		for a in i .. array.length-2
			sell = array[a+1]
			diff = array[a+1] - buy
			p "#{sell} - #{buy}"
			p "#{sell - buy}"
			if (diff>biggest_diff)
				biggest_diff = diff
				index_of_buy = i
				index_of_sell = a+1
			end
		end
	end
	p "Sell day: #{index_of_sell+1} Buy day: #{index_of_buy+1}"
	[index_of_sell, index_of_buy]
end

# array = [17,3,6,9,15,8,6,1,10]
array = [5,4,100,2,1,4,8,5,3,1,1,10000]
puts stock_picker(array)
