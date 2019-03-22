x = 0
100.times do
	x += 1
	Genre.seed do |s|
		s.genre = "ジャンル#{x}"
	end
end