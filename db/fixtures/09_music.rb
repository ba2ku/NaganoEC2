x = 0
y = 0
100.times do
x += 1
    12.times do
        Music.seed do |s|
            y += 1
            s.item_id = x
            s.cd_number = 1
            s.music_name = "曲#{x}"
            s.music_order = y
            test_url = ''
        end
    end
end