# admin_users
x = 0
1.times do
    x += 1
    User.seed do |s|
        s.email = "admin#{x}@com"
        s.password = "asdasd"
        s.phone_number = "070-0000-0000-#{x}"
        s.registration = true
        s.kanji_last = "管理者"
        s.kanji_first = "ユーザー#{x}"
        s.katakana_last = "カンリシャ"
        s.katakana_first = "ユーザー#{x}"
        s.notice = "管理者#{x}"
        s.admin_user = true
    end
end


# usres
99.times do
    x += 1
    User.seed do |s|
        s.email = "user#{x}@com"
        s.password = "asdasd"
        s.phone_number = "070-0000-0000-#{x}"
        s.registration = true
        s.kanji_last = " 一般"
        s.kanji_first = "ユーザー#{x}"
        s.katakana_last = "イッパン"
        s.katakana_first = "ユーザー#{x}"
        s.notice = "ユーザー#{x}"
        s.admin_user = false
    end
end