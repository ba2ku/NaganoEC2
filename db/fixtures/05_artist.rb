x = 0
200.times do
	x += 1
	Artist.seed do |s|
		s.artist_name = "アーティスト#{x}"
	end
end