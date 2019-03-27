
x = 0
31.times do
    x += 1
    Item.seed do |s|
        s.name = "アイテム#{x}"
        s.genre_id = x
        s.artist_id = x
        s.label_id = x
        s.property_id = 1
        s.jacket = ''
        s.price = 1300
        s.details = '※特典はなくなり次第終了となります。予めご了承ください。'
        s.stock = 120
        s.release_day = Time.zone.now
        s.display_flag = true
    end
end

Item.seed do |s|
        s.name = "在庫5アイテム"
        s.genre_id = 1
        s.artist_id = 1
        s.label_id = 1
        s.property_id = 1
        s.jacket = ''
        s.price = 1300
        s.details = '※残り５こ'
        s.stock = 5
        s.release_day = Time.zone.now
        s.display_flag = true
end

Item.seed do |s|
        s.name = "在庫0アイテム2"
        s.genre_id = 1
        s.artist_id = 1
        s.label_id = 1
        s.property_id = 1
        s.jacket = ''
        s.price = 1300
        s.details = '※在庫無し男。'
        s.stock = 0
        s.release_day = Time.zone.now
        s.display_flag = true
    end