User.create(username: "turnstile", email: "test@email.com", password_digest: "password", birthday: "1900-1-20")
User.create(username: "chainsaw", email: "brick@email.com", password_digest: "password", birthday: "1900-1-20")
User.create(username: "duckbill", email: "db@email.com", password_digest: "password", birthday: "1900-1-20")
User.create(username: "wharf", email: "wharf@email.com", password_digest: "password", birthday: "1900-1-20")
Profile.create(blog_name: "Tengwanda", sub_name: "Lenca tengwelë pelentul en úil", description: "Vo dom lukas rukis mlodic, da bez videnie cxtirsto. Miaso glodju mi sam, dla zxenis krasju ne. Ne poka palcis cxesajm tut, kak es svadba glodju. Mai vo pridij delajsx probudijm. Obuvijm razumju ludvozis mi hce. Novuo sportju program tri ja, bez bo mlodju prekrasju, tof tper tugde dengis no. Sipal prosim sol ja, om leto glosuf despiat voz.", user_id: "1")
Profile.create(blog_name: "Nér mí núta vacco hopassë", sub_name: "Rië an linta larca.", description: "Da angloju navestib uzx, tut vi usta podpor silaju, divaj nadeam sam on. Miakju prostju sam na, uzx vo email pikant dolgju, uzx ku stol informacias. Telo varit mnogju na sam, bu kak ribas pokazit. Troh vnimanie no oni, oni maluo silaju mi. Om zakupis zapomnitlubovijm voz, dva ku vsezem potrebijm. Goroh ludvozis pomocijsx mi mne.", user_id: "2")
Profile.create(blog_name: "Inqua nostalë cú qua.", sub_name: "Cu loc enga valinor valarauko", description: "Bi padali pitasx posteluf voz, vozifs narodis cxtirsto zxe no, grud samju moi na. Dev tomatis ostatju telefonijm li, troh zvezd te zxe. Lubijm gladju informacia bi bil, bu piat tper studentis hce. To miaso kontainer prinesijsx dom. Da esli zlatoju tot, do hce riba tancit gotovenie. On pesok utratite ucxitelica uzx, na varenie imenijt sluzxba des, mislijm gramatik li voz.
    ", user_id: "3")
Profile.create(blog_name: "Ama telpë laicë", sub_name: "Oa queni venessë tar, up alu raica moina aldëon", description: "Bo maks nigda bistruo tut, zxe bratis darijte prinesijsx bi. Ja dla gazet igrajte drugica, tot te ovocx padali, ocxis kazahzem es dom. Mi zxe znajm goroh, sol mi zubis razumenie. Celoju ostatit ne mne, tot no domo darijte, den grud odevijm ti. Bu vnov nikto tancit tot. Glosuf utratite moi on. Din on sipal cxitat.", user_id: "4")


post_content = ["Kommen grousse Gesträich hie an, ke Bänk Dach Biereg rou, vu eng alles d'Stroos. Rem fort Gaas d'wäiss fu, Schiet d'Musek rëschten dé rëm, an wou d'Pied verstoppen Milliounen. Durch päift gemaacht as fir, den ke alle d'Loft, as oft eise botze. Drun soubal hin mä. Schiet gefällt ke dén, Faarwen zwëschen Dauschen vu ech. De spilt d'Pied Milliounen ech.",

"Dén do soubal beschte klinzecht, alle Gaart d'Kamäiner nei as. Wat hu Haus d'Land schéinen. An sech Frot Minutt ech, an hun Wand lait Scholl. Jo Ronn durch dat, Fuesent Margréitchen hir hu.",

"Déi de goung alles, aus d'Hiezer beschéngt en. Dann Keppchen ze rou. Dan Räis Wand blénken um, dem päift heemlech ze. Gaas lossen op nët.",

"Plett'len Hämmelsbrot dir da. Un d'Wéën Dauschen sin. Gét as iwer alles. Jo Haus zielen rem, en wat spilt d'Wéën heemlech. Gart Fläiß beschéngt am nun, da ass d'Mier hinnen.",

"Ze wou Engel d'Wise, wa rei Welt Bass brommt. Ké ass deser Duerf Kléder, muerges rëschten fir en. Get zënne soubal meescht et, zënne d'Sonn d'Vullen méi wa. Och vu Kaffi méngem ménger. Rem geet blëtzen en, mat meescht d'wäiss prächteg hu, ze wee Heck esou Schuebersonndeg. Et drun virun gewëss hin, Dall Feld hir ke.",

"Wa derfir uechter mir, d'Sonn hannendrun ke méi, ze gei main Bass d'Stroos. Nët voll deser d'Wéën ké, um drem schéi fergiess gin. Ierd Hierz genuch méi fu. Zwé jo d'Beem gewalteg, och hu d'Mier beschte d'Gaassen. Wee ze néierens Hämmelsbrot, jeitzt lossen prächteg zwé de. Dé hun weisen Grénge, do Wand bléit Feierwon ons, ston Noper och am.",

"Mir durch aremt bessert et, get Himmel d'Kanner ké. Freiesch d'Stroos op rem. Hämmel Minutt as rëm, no alle frësch Kolrettchen mat. Ronn dann sëtzen net do, schéi d'Gaassen as déi. Fu dén Dall Engel. Stét jéngt genuch hir do, en vun ma'n grouss d'Blumme. Gét wait grousse Milliounen wa, Säiten gewëss hie si.",

"Am wat drun zënter. Onser séngt schaddreg fu hir, wait d'Beem Feierwon am gin. Vu d'Pied gemaacht d'Kanner ass, vu gehéiert d'Kamäiner sou, et blo eraus d'Kamäiner. Vill geplot dat no. Oft Halm zielen dämpen fu.",

"Gëtt sinn jeitzt da mir, sin d'Land Fletschen an. Da der main Bass Minutt, vun Land Benn Dach dé. Et Stret kommen déi, Zalot Kolrettchen rou de. An sou wait Friemd verstoppen, um déi fond weisen gemaacht. Fest Faarwen et eng, op hire bereet muerges aus, en nei fond laacht. Vill Friemd bei am, mä Hierz geplot néierens och.",

"Feld Blummen gin ze, méi sinn Minutt ke. Rou drem d'Blumme Hämmelsbrot op, ech bleiwe Kirmesdag ké. Jo Mier genuch aus, um rem schlon Gesträich. Sou si Dach Zalot däischter, ons am frou schnéiwäiss, de hinnen schléit Fuesent dén. Wat muerges bessert um.","Kommen grousse Gesträich hie an, ke Bänk Dach Biereg rou, vu eng alles d'Stroos. Rem fort Gaas d'wäiss fu, Schiet d'Musek rëschten dé rëm, an wou d'Pied verstoppen Milliounen. Durch päift gemaacht as fir, den ke alle d'Loft, as oft eise botze. Drun soubal hin mä. Schiet gefällt ke dén, Faarwen zwëschen Dauschen vu ech. De spilt d'Pied Milliounen ech.",

"Dén do soubal beschte klinzecht, alle Gaart d'Kamäiner nei as. Wat hu Haus d'Land schéinen. An sech Frot Minutt ech, an hun Wand lait Scholl. Jo Ronn durch dat, Fuesent Margréitchen hir hu.",

"Déi de goung alles, aus d'Hiezer beschéngt en. Dann Keppchen ze rou. Dan Räis Wand blénken um, dem päift heemlech ze. Gaas lossen op nët.",

"Plett'len Hämmelsbrot dir da. Un d'Wéën Dauschen sin. Gét as iwer alles. Jo Haus zielen rem, en wat spilt d'Wéën heemlech. Gart Fläiß beschéngt am nun, da ass d'Mier hinnen.",

"Ze wou Engel d'Wise, wa rei Welt Bass brommt. Ké ass deser Duerf Kléder, muerges rëschten fir en. Get zënne soubal meescht et, zënne d'Sonn d'Vullen méi wa. Och vu Kaffi méngem ménger. Rem geet blëtzen en, mat meescht d'wäiss prächteg hu, ze wee Heck esou Schuebersonndeg. Et drun virun gewëss hin, Dall Feld hir ke.",

"Wa derfir uechter mir, d'Sonn hannendrun ke méi, ze gei main Bass d'Stroos. Nët voll deser d'Wéën ké, um drem schéi fergiess gin. Ierd Hierz genuch méi fu. Zwé jo d'Beem gewalteg, och hu d'Mier beschte d'Gaassen. Wee ze néierens Hämmelsbrot, jeitzt lossen prächteg zwé de. Dé hun weisen Grénge, do Wand bléit Feierwon ons, ston Noper och am.",

"Mir durch aremt bessert et, get Himmel d'Kanner ké. Freiesch d'Stroos op rem. Hämmel Minutt as rëm, no alle frësch Kolrettchen mat. Ronn dann sëtzen net do, schéi d'Gaassen as déi. Fu dén Dall Engel. Stét jéngt genuch hir do, en vun ma'n grouss d'Blumme. Gét wait grousse Milliounen wa, Säiten gewëss hie si.",

"Am wat drun zënter. Onser séngt schaddreg fu hir, wait d'Beem Feierwon am gin. Vu d'Pied gemaacht d'Kanner ass, vu gehéiert d'Kamäiner sou, et blo eraus d'Kamäiner. Vill geplot dat no. Oft Halm zielen dämpen fu.",

"Gëtt sinn jeitzt da mir, sin d'Land Fletschen an. Da der main Bass Minutt, vun Land Benn Dach dé. Et Stret kommen déi, Zalot Kolrettchen rou de. An sou wait Friemd verstoppen, um déi fond weisen gemaacht. Fest Faarwen et eng, op hire bereet muerges aus, en nei fond laacht. Vill Friemd bei am, mä Hierz geplot néierens och.",

"Feld Blummen gin ze, méi sinn Minutt ke. Rou drem d'Blumme Hämmelsbrot op, ech bleiwe Kirmesdag ké. Jo Mier genuch aus, um rem schlon Gesträich. Sou si Dach Zalot däischter, ons am frou schnéiwäiss, de hinnen schléit Fuesent dén. Wat muerges bessert um.","Kommen grousse Gesträich hie an, ke Bänk Dach Biereg rou, vu eng alles d'Stroos. Rem fort Gaas d'wäiss fu, Schiet d'Musek rëschten dé rëm, an wou d'Pied verstoppen Milliounen. Durch päift gemaacht as fir, den ke alle d'Loft, as oft eise botze. Drun soubal hin mä. Schiet gefällt ke dén, Faarwen zwëschen Dauschen vu ech. De spilt d'Pied Milliounen ech.",

"Dén do soubal beschte klinzecht, alle Gaart d'Kamäiner nei as. Wat hu Haus d'Land schéinen. An sech Frot Minutt ech, an hun Wand lait Scholl. Jo Ronn durch dat, Fuesent Margréitchen hir hu.",

"Déi de goung alles, aus d'Hiezer beschéngt en. Dann Keppchen ze rou. Dan Räis Wand blénken um, dem päift heemlech ze. Gaas lossen op nët.",

"Plett'len Hämmelsbrot dir da. Un d'Wéën Dauschen sin. Gét as iwer alles. Jo Haus zielen rem, en wat spilt d'Wéën heemlech. Gart Fläiß beschéngt am nun, da ass d'Mier hinnen.",

"Ze wou Engel d'Wise, wa rei Welt Bass brommt. Ké ass deser Duerf Kléder, muerges rëschten fir en. Get zënne soubal meescht et, zënne d'Sonn d'Vullen méi wa. Och vu Kaffi méngem ménger. Rem geet blëtzen en, mat meescht d'wäiss prächteg hu, ze wee Heck esou Schuebersonndeg. Et drun virun gewëss hin, Dall Feld hir ke.",

"Wa derfir uechter mir, d'Sonn hannendrun ke méi, ze gei main Bass d'Stroos. Nët voll deser d'Wéën ké, um drem schéi fergiess gin. Ierd Hierz genuch méi fu. Zwé jo d'Beem gewalteg, och hu d'Mier beschte d'Gaassen. Wee ze néierens Hämmelsbrot, jeitzt lossen prächteg zwé de. Dé hun weisen Grénge, do Wand bléit Feierwon ons, ston Noper och am.",

"Mir durch aremt bessert et, get Himmel d'Kanner ké. Freiesch d'Stroos op rem. Hämmel Minutt as rëm, no alle frësch Kolrettchen mat. Ronn dann sëtzen net do, schéi d'Gaassen as déi. Fu dén Dall Engel. Stét jéngt genuch hir do, en vun ma'n grouss d'Blumme. Gét wait grousse Milliounen wa, Säiten gewëss hie si.",

"Am wat drun zënter. Onser séngt schaddreg fu hir, wait d'Beem Feierwon am gin. Vu d'Pied gemaacht d'Kanner ass, vu gehéiert d'Kamäiner sou, et blo eraus d'Kamäiner. Vill geplot dat no. Oft Halm zielen dämpen fu.",

"Gëtt sinn jeitzt da mir, sin d'Land Fletschen an. Da der main Bass Minutt, vun Land Benn Dach dé. Et Stret kommen déi, Zalot Kolrettchen rou de. An sou wait Friemd verstoppen, um déi fond weisen gemaacht. Fest Faarwen et eng, op hire bereet muerges aus, en nei fond laacht. Vill Friemd bei am, mä Hierz geplot néierens och.",

"Feld Blummen gin ze, méi sinn Minutt ke. Rou drem d'Blumme Hämmelsbrot op, ech bleiwe Kirmesdag ké. Jo Mier genuch aus, um rem schlon Gesträich. Sou si Dach Zalot däischter, ons am frou schnéiwäiss, de hinnen schléit Fuesent dén. Wat muerges bessert um.","Kommen grousse Gesträich hie an, ke Bänk Dach Biereg rou, vu eng alles d'Stroos. Rem fort Gaas d'wäiss fu, Schiet d'Musek rëschten dé rëm, an wou d'Pied verstoppen Milliounen. Durch päift gemaacht as fir, den ke alle d'Loft, as oft eise botze. Drun soubal hin mä. Schiet gefällt ke dén, Faarwen zwëschen Dauschen vu ech. De spilt d'Pied Milliounen ech.",

"Dén do soubal beschte klinzecht, alle Gaart d'Kamäiner nei as. Wat hu Haus d'Land schéinen. An sech Frot Minutt ech, an hun Wand lait Scholl. Jo Ronn durch dat, Fuesent Margréitchen hir hu.",

"Déi de goung alles, aus d'Hiezer beschéngt en. Dann Keppchen ze rou. Dan Räis Wand blénken um, dem päift heemlech ze. Gaas lossen op nët.",

"Plett'len Hämmelsbrot dir da. Un d'Wéën Dauschen sin. Gét as iwer alles. Jo Haus zielen rem, en wat spilt d'Wéën heemlech. Gart Fläiß beschéngt am nun, da ass d'Mier hinnen.",

"Ze wou Engel d'Wise, wa rei Welt Bass brommt. Ké ass deser Duerf Kléder, muerges rëschten fir en. Get zënne soubal meescht et, zënne d'Sonn d'Vullen méi wa. Och vu Kaffi méngem ménger. Rem geet blëtzen en, mat meescht d'wäiss prächteg hu, ze wee Heck esou Schuebersonndeg. Et drun virun gewëss hin, Dall Feld hir ke.",

"Wa derfir uechter mir, d'Sonn hannendrun ke méi, ze gei main Bass d'Stroos. Nët voll deser d'Wéën ké, um drem schéi fergiess gin. Ierd Hierz genuch méi fu. Zwé jo d'Beem gewalteg, och hu d'Mier beschte d'Gaassen. Wee ze néierens Hämmelsbrot, jeitzt lossen prächteg zwé de. Dé hun weisen Grénge, do Wand bléit Feierwon ons, ston Noper och am.",

"Mir durch aremt bessert et, get Himmel d'Kanner ké. Freiesch d'Stroos op rem. Hämmel Minutt as rëm, no alle frësch Kolrettchen mat. Ronn dann sëtzen net do, schéi d'Gaassen as déi. Fu dén Dall Engel. Stét jéngt genuch hir do, en vun ma'n grouss d'Blumme. Gét wait grousse Milliounen wa, Säiten gewëss hie si.",

"Am wat drun zënter. Onser séngt schaddreg fu hir, wait d'Beem Feierwon am gin. Vu d'Pied gemaacht d'Kanner ass, vu gehéiert d'Kamäiner sou, et blo eraus d'Kamäiner. Vill geplot dat no. Oft Halm zielen dämpen fu.",

"Gëtt sinn jeitzt da mir, sin d'Land Fletschen an. Da der main Bass Minutt, vun Land Benn Dach dé. Et Stret kommen déi, Zalot Kolrettchen rou de. An sou wait Friemd verstoppen, um déi fond weisen gemaacht. Fest Faarwen et eng, op hire bereet muerges aus, en nei fond laacht. Vill Friemd bei am, mä Hierz geplot néierens och.",

"Feld Blummen gin ze, méi sinn Minutt ke. Rou drem d'Blumme Hämmelsbrot op, ech bleiwe Kirmesdag ké. Jo Mier genuch aus, um rem schlon Gesträich. Sou si Dach Zalot däischter, ons am frou schnéiwäiss, de hinnen schléit Fuesent dén. Wat muerges bessert um."]

post_content.each do |post_text|
    Post.create(title: "Rou drem d'Blumme Hämmelsbrot op", content: post_text, user_id: "1")
end

post_content.each do |post_text|
    Post.create(title: "Da der main Bass Minutt", content: post_text, user_id: "2")
end

post_content.each do |post_text|
    Post.create(title: "Gëtt sinn jeitzt da mir", content: post_text, user_id: "3")
end

post_content.each do |post_text|
    Post.create(title: "Vu d'Pied gemaacht d'Kanner", content: post_text, user_id: "4")
end

tag_list = ["make", "maker", "crft", "create", "diy", "doityourself", "build", "cook", "sew", "weld", "code", "risk", "grow", "learn"]

tag_list.each do |tag|
    newtag = Tag.create(name: tag)
end

i = 1
while i < 161 do
    PostTag.create(post_id: i, tag_id: (1 + rand(14)))
    i = i+1
end