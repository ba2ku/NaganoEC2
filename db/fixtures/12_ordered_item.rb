OrderedItem.seed do |s|
	s.id = 0
	s.item_id = 0
	s.shopping_history_id = 0
	s.price = 300
	quantity = 1
end

OrderedItem.seed do |s|
	s.id = 1
	s.item_id = 1
	s.shopping_history_id = 0
	s.price = 5400
	quantity = 2
end

OrderedItem.seed do |s|
	s.id = 2
	s.item_id = 0
	s.shopping_history_id = 1
	s.price = 9000
	quantity = 2
end

OrderedItem.seed do |s|
	s.id = 3
	s.item_id = 0
	s.shopping_history_id = 2
	s.price = 8000
	quantity = 2
end

OrderedItem.seed do |s|
	s.id = 4
	s.item_id = 0
	s.shopping_history_id = 2
	s.price = 12000
	quantity = 2
end