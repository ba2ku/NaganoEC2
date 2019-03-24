x = 0
100.times do
	x += 1
	10.times do
		ShoppingHistory.seed do |s|
			s.user_id = x
			s.address_history_id = x
			s.shopping_date = Time.zone.now
			s.status = "発送済み"
		end
	end
end