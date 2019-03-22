x = 0
10.times do
    x += 1
    Infomation.seed do |s|
        s.infomation = "お知らせ#{x}"
    end
end