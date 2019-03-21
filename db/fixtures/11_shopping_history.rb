ShoppingHistory.seed do |s|
	s.id = 0
	s.user_id = 0
	s.address_history_id = 0
	s.shopping_date = Time.zone.now
	s.status = "入金待ち"
end

ShoppingHistory.seed do |s|
	s.id = 1
	s.user_id = 0
	s.address_history_id = 0
	s.shopping_date = Time.zone.now
	s.status = "出荷待ち"
end

ShoppingHistory.seed do |s|
	s.id = 2
	s.user_id = 1
	s.address_history_id = 1
	s.shopping_date = Time.zone.now
	s.status = "出荷済み"
end

ShoppingHistory.seed do |s|
	s.id = 3
	s.user_id = 3
	s.address_history_id = 3
	s.shopping_date = Time.zone.now
	s.status = "入金待ち"
end

ShoppingHistory.seed do |s|
	s.id = 4
	s.user_id = 3
	s.address_history_id = 4
	s.shopping_date = Time.zone.now
	s.status = "入金待ち"
end

ShoppingHistory.seed do |s|
	s.id = 5
	s.user_id = 3
	s.address_history_id = 5
	s.shopping_date = Time.zone.now
	s.status = "入金待ち"
end