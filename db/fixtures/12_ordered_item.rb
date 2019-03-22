OrderedItem.seed do |s|
	s.id = 0
	s.item_id = 0
	s.shopping_history_id = 0
	s.price = 300
	s.quantity = 2
end

OrderedItem.seed do |s|
	s.id = 1
	s.item_id = 1
	s.shopping_history_id = 0
	s.price = 5400
	s.quantity = 2
end

OrderedItem.seed do |s|
	s.id = 2
	s.item_id = 0
	s.shopping_history_id = 1
	s.price = 300
	s.quantity = 2
end