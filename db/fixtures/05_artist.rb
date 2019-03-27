x = 0
31.times do
	x += 1
	Artist.seed do |s|
		s.artist_name = "アーティスト#{x}"
	end
end