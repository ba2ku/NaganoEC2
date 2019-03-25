x = 0
200.times do
	x += 1
	Genre.seed do |s|
		s.genre = "ジャンル#{x}"
	end
end