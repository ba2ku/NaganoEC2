Item.seed do |s|
    s.id = 0
    s.genre_id = 0
    s.artist_id = 0
    s.label_id = 0
    s.property_id = 0
    s.jacket = 'hoges'
    s.price = 300
    s.details = 'hoe'
    s.stock = 350
    s.release_day = Time.zone.now
    s.display_flag = true
end

Item.seed do |s|
    s.id = 1
    s.genre_id = 1
    artist_id = 1
    label_id = 1
    property_id = 1
    s.jacket = 'hogehoge'
    s.price = 54000
    s.details = 'hogehogeghoe'
    s.stock = 7
    s.release_day = Time.zone.now
    s.display_flag = true
end

Item.seed do |s|
    s.id = 2
    s.genre_id = 2
    s.artist_id =2
    s.label_id = 2
    s.property_id = 2
    s.jacket = 'hogehoge'
    s.price = 1000
    s.details = 'hogehogeghoe'
    s.stock = 50
    s.release_day = Time.zone.now
    s.display_flag = true
end