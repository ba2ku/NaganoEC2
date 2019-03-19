User.seed do |s|
    s.id = 0
    s.email = "hoge@hoge.com"
    s.encrypted_password = "test123"
    s.phone_number = "080-0000-0000"
    s.registration = true
    s.kanji_last = "hoge"
    s.kanji_first = "タロウ"
    s.katakana_last = "ホゲ"
    s.katakana_first = "タロウ"
    s.notice = "お金払ってください"
    s.admin_user = true
end

User.seed do |s|
    s.id = 1
    s.email = "admin@test.com"
    s.encrypted_password = "test123"
    s.phone_number = "080-0000-0000"
    s.registration = true
    s.kanji_last = "管理"
    s.kanji_first = "使用者"
    s.katakana_last = "カンリ"
    s.katakana_first = "ユーザー"
    s.admin_user = true
end

User.seed do |s|
    s.id = 2
    s.email = "user@test.com"
    s.encrypted_password = "test123"
    s.phone_number = "080-0000-0001"
    s.registration = true
    s.kanji_last = "一般"
    s.kanji_first = "使用者"
    s.katakana_last = "イッパン"
    s.katakana_first = "ユーザー"
    s.notice = "お金払ってください"
    s.admin_user = false
end