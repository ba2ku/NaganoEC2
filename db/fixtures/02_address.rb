x = 0
200.times do
    x += 1
    Address.seed do |s|
        s.user_id = x
        s.postcode = "311-1304"
        s.prefecture = "茨城県"
        s.city = "東茨城郡大洗町和銅"
        s.street = "1-2-3"
        s.building = "大洗女子学園 学生寮"
    end
end