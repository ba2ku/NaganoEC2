x = 0
100.times do
	x += 1
	Label.seed do |s|
		s.label = "レーベル#{x}"
	end
end