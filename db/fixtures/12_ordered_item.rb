x = 0
200.times do
	y = 0
	x += 1
	10.times do
		y += 1
		OrderedItem.seed do |s|
			s.item_id = y
			s.shopping_history_id = x
			s.price = 1300
			quantity = 5
		end
	end
end