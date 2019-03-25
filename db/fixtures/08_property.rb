x = 0
200.times do
	x += 1
	Property.seed do |s|
		s.property = "プロパティ#{x}"
	end
end