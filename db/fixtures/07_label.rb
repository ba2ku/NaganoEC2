x = 0
200.times do
	x += 1
	Label.seed do |s|
		s.label = "レーベル#{x}"
	end
end