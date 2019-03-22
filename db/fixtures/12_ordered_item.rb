x = 0
y = 0
100.times do
	x += 1
	10.times do
		y += 1
		OrderedItem.seed do |s|
			s.item_id = y
			s.shopping_history_id = x
			s.price = 1300
			quantity = 1
		end
	end
end