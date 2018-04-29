User.create(username: "turnstile", email: "test@email.com", password_digest: "password", birthday: "1900-1-20")
User.create(username: "chainsaw", email: "brick@email.com", password_digest: "password", birthday: "1900-1-20")
User.create(username: "duckbill", email: "db@email.com", password_digest: "password", birthday: "1900-1-20")
User.create(username: "wharf", email: "wharf@email.com", password_digest: "password", birthday: "1900-1-20")
Post.create(title: "turnstile's first", content: "Лорем ипсум долор сит амет, аццумсан оффициис цонвенире еи усу, ан еум долор дебитис, еос еи опортере праесент. Еам суавитате посидониум не, доцтус плацерат ин вел. Цум ет долорес дигниссим. Цу сед дицант лаборес, еи лабитур детрацто витуператорибус еос. Иусто чоро постулант ид пер.", user_id: "1")
Post.create(title: "chainsaw's first", content: "լոռեմ իպսում դոլոռ սիթ ամեթ, պոպուլո ֆաբելլաս ելեծթռամ մել եխ, լուծիլիուս պռաեսենթ մաիեսթաթիս եա եում. մեիս վելիթ վիթուպեռաթա իդ պռո, եում թամքուամ դեթռածթո վիթուպեռաթա թե. եա պռո եռաթ մոլլիս անծիլլաե, եթ լիբռիս պեթենթիում նեգլեգենթուռ ծում, քուի թեմպոռ սծաեվոլա եխպլիծառի ծու. սիթ եի ադմոդում նոմինավի սենթենթիաե.", user_id: "2")
Post.create(title: "duckbill's first", content: "विवरन बिन्दुओ मुख्यतह मार्गदर्शन जैसी ऎसाजीस वास्तव अन्तरराष्ट्रीयकरन बनाति उसके सक्षम हीकम जिम्मे व्याख्या विश्वव्यापि आशाआपस अविरोधता सिद्धांत सदस्य अपनि खरिदे विनिमय सभिसमज नाकर विश्व तकनीकी यायेका सकती हमारी जाता सारांश एसेएवं ढांचा विनिमय प्रतिबध्दता करती निर्माता बीसबतेबोध अन्तरराष्ट्रीयकरन उन्हे उनका लेकिन उदेश रहारुप मुश्किले", user_id: "3")
Post.create(title: "wharf's first", content: "以都名課ひぬセーホ等根鵜りひやゃたりたなちめヒマッヨホれはっかくけく名日ひふ模阿譜ひ知遊派せ離無列知目絵素し個遊日。ンクンヒ目さいヨヘミヤ尾区等名以巣瀬個絵名屋るえぬートケキメホシ離留列無マコャソャ個課等舳ても、舳ほゅほ離目等ょむほ他名ょま。魔以はょ目御他阿尾手露無擢阿露瀬夜つほす津名氏遊うまめ絵すお津氏カムラオ無擢個毛手尾つけ。派日ちゃ個譜そ以絵保、むみおし鵜夜しま、めみそく。
", user_id: "4")
Post.create(title: "wharf's second", content: "以都名課ひぬセーホ等根鵜りひやゃたりたなちめヒマッヨホれはっかくけく名日ひふ模阿譜ひ知遊派せ離無列知目絵素し個遊日。ンクンヒ目さいヨヘミヤ尾区等名以巣瀬個絵名屋るえぬートケキメホシ離留列無マコャソャ個課等舳ても、舳ほゅほ離目等ょむほ他名ょま。魔以はょ目御他阿尾手露無擢阿露瀬夜つほす津名氏遊うまめ絵すお津氏カムラオ無擢個毛手尾つけ。派日ちゃ個譜そ以絵保、むみおし鵜夜しま、めみそく。
", user_id: "4")
Profile.create(blog_name: "Turnstile's Blog", sub_name: "оффициис цонвенире", description: "Лорем ипсум долор сит амет, аццумсан оффициис цонвенире еи усу, ан еум долор дебитис", user_id: "1")
Profile.create(blog_name: "Chainsaw's Blog", sub_name: "իպսում դոլոռ սիթ", description: "ֆաբելլաս ելեծթռամ մել եխ, լուծիլիուս պռաեսենթ ", user_id: "2")
Profile.create(blog_name: "Duckbill's Blog", sub_name: "बिन्दुओ मुख्यतह", description: "बनाति उसके सक्षम हीकम जिम्मे व्याख्या ", user_id: "3")
Profile.create(blog_name: "Wharf's Blog", sub_name: "等根鵜", description: "りひやゃたりたなちめヒマッヨホれはっかくけく名日", user_id: "4")

# img1 = Image.new
# img1.file = "photos/coder.jpg"
# img1.caption = "coder caption"
# img1.post_id = "1"
# img1.user_id = "1"
# img1.save!

# img2 = Image.new
# img2.file = "photos/measuretwice.jpeg"
# img2.caption = "measure caption"
# img2.post_id = "2"
# img2.user_id = "2"
# img2.save!

# img3 = Image.new
# img3.file = "photos/miseenplace.jpg"
# img3.caption = "mise caption"
# img3.post_id = "3"
# img3.user_id = "3"
# img3.save!

# img4 =Image.new
# img4.file = "photos/weld.jpg"
# img4.caption = "weld caption"
# img4.post_id = "4"
# img4.user_id = "4"
# img4.save!

# img5 =Image.new
# img5.file = "photos/sewingmachine.jpeg"
# img5.caption = "sew caption"
# img5.post_id = "5"
# img5.user_id = "4"
# img5.save!


img1 = Image.create(file: "photos/coder.jpg", caption: "coder caption", post_id: "1", user_id: "1")
img2 = Image.create(file: "photos/measuretwice.jpeg", caption: "measure caption", post_id: "2", user_id: "2")
img3 = Image.create(file: "photos/miseenplace.jpg", caption: "mise caption", post_id: "3", user_id: "3")
img4 = Image.create(file: "photos/weld.jpeg", caption: "weld caption", post_id: "4", user_id: "4")
img5 = Image.create(file: "photos/sewingmachine.jpeg", caption: "sew caption", post_id: "5", user_id: "4")