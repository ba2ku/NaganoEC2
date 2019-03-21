# admin_users
User.seed do |s|
    s.email = "admin1@com"
    s.password = "asdasd"
    s.phone_number = "070-0000-0000"
    s.registration = true
    s.kanji_last = "木村"
    s.kanji_first = "彰良"
    s.katakana_last = "キムラ"
    s.katakana_first = "アキラ"
    s.notice = "管理者１"
    s.admin_user = true
end
User.seed do |s|
    s.email = "admin2@com"
    s.password = "asdasd"
    s.phone_number = "070-0000-0000"
    s.registration = true
    s.kanji_last = "菊池"
    s.kanji_first = "主税"
    s.katakana_last = "キクチ"
    s.katakana_first = "チカラ"
    s.notice = "管理者2"
    s.admin_user = true
end
User.seed do |s|
    s.email = "admin3@com"
    s.password = "asdasd"
    s.phone_number = "070-0000-0000"
    s.registration = true
    s.kanji_last = "菊池"
    s.kanji_first = "主税"
    s.katakana_last = "キクチ"
    s.katakana_first = "チカラ"
    s.notice = "管理者2"
    s.admin_user = true
end

# usres
User.seed do |s|
    s.email = "user1@com"
    s.password = "asdasd"
    s.phone_number = "070-0000-0000"
    s.registration = true
    s.kanji_last = "秋山"
    s.kanji_first = "優花里"
    s.katakana_last = "アキヤマ"
    s.katakana_first = "ユカリ"
    s.notice = "あんこうチーム"
    s.admin_user = false
end
User.seed do |s|
    s.email = "user2@com"
    s.password = "asdasd"
    s.phone_number = "070-0000-0000"
    s.registration = true
    s.kanji_last = "西住"
    s.kanji_first = "みほ"
    s.katakana_last = "ニシズミ"
    s.katakana_first = "ミホ"
    s.notice = "あんこうチーム"
    s.admin_user = false
end
User.seed do |s|
    s.email = "user3@com"
    s.password = "asdasd"
    s.phone_number = "070-0000-0000"
    s.registration = true
    s.kanji_last = "五十鈴"
    s.kanji_first = "華"
    s.katakana_last = "イスズ"
    s.katakana_first = "ハナ"
    s.notice = "あんこうチーム"
    s.admin_user = false
end
User.seed do |s|
    s.email = "user4@com"
    s.password = "asdasd"
    s.phone_number = "070-0000-0000"
    s.registration = true
    s.kanji_last = "冷泉"
    s.kanji_first = "麻子"
    s.katakana_last = "レイゼイ"
    s.katakana_first = "マコ"
    s.notice = "あんこうチーム"
    s.admin_user = false
end
User.seed do |s|
    s.email = "user5@com"
    s.password = "asdasd"
    s.phone_number = "070-0000-0000"
    s.registration = true
    s.kanji_last = "武部"
    s.kanji_first = "沙織"
    s.katakana_last = "タケベ"
    s.katakana_first = "サオリ"
    s.notice = "あんこうチーム"
    s.admin_user = false
end