x = 0
100.times do
	x += 1
	Property.seed do |s|
		s.property = "プロパティ#{x}"
	end
end