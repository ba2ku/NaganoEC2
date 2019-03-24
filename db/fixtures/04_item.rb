Item.seed do |s|
    s.id = 0
    s.genre_id = 0
    s.artist_id = 0
    s.label_id = 0
    s.property_id = 0
    s.name = 'HOGES'
    s.jacket_id = 'hoges'
    s.price = 300
    s.details = 'hoe'
    s.stock = 350
    s.release_day = Time.zone.now
    s.display_flag = true
end

Item.seed do |s|
    s.id = 1
    s.genre_id = 1
    s.artist_id =1
    s.label_id = 1
    s.property_id = 1
    s.name = 'FIZZBUZZ'
    s.jacket_id = 'hogehoge'
    s.price = 1000
    s.details = 'hogehogeghoe'
    s.stock = 5052
    s.release_day = Time.zone.now
    s.display_flag = true
end

Item.seed do |s|
    s.id = 2
    s.genre_id = 2
    s.artist_id = 2
    s.label_id = 2
    s.property_id = 2
    s.name = 'DWCDWC'
    s.jacket_id = 'hogehoge'
    s.price = 123456789
    s.details = 'hogehogeghoe'
    s.stock = 5000
    s.release_day = Time.zone.now
    s.display_flag = true
end
