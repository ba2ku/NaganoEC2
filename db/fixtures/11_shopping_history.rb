x = 0
200.times do
	x += 1
		ShoppingHistory.seed do |s|
			s.user_id = x
			# s.address_history_id = x
			s.shopping_date = Time.zone.now
			s.status = "発送済み"
	end
end