x = 0
1.times do
	x += 1
	Property.seed do |s|
		s.property = "CD"
	end
	Property.seed do |s|
		s.property = "　ALBUM"
	end
end