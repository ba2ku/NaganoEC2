x = 0
100.times do
    x += 1
    Item.seed do |s|
        s.name = "アイテム#{x}"
        s.genre_id = x
        s.artist_id = x
        s.label_id = x
        s.property_id = x
        s.jacket = ''
        s.price = 1300
        s.details = '※特典はなくなり次第終了となります。予めご了承ください。'
        s.stock = 120
        s.release_day = Time.zone.now
        s.display_flag = true
    end
end