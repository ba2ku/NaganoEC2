x = 0
z = 0
100.times do
x += 1
y = 0
    12.times do
        y += 1
        z += 1
        Music.seed do |s|
            s.item_id = x
            s.cd_number = 1
            s.music_name = "曲#{z}"
            s.music_order = y
            test_url = ''
        end
    end
end