//
//  DataStore.swift
//  TimeHopper
//
//  Created by SwiftBuddies on 25.04.2023.
//

final class DataStore {
    
    static let shared = DataStore()
        
//MARK: - Route Data Store
    let universes = [[
        "id": "1",
        "title": "Наш мир",
        "locations": [[
            "id": "1.1",
            "title": "Земля, Италия",
            "years": [[
                "id": "1.1.1",
                "title": "98—117 годы н.э.",
                "description": "Добро пожаловать в Рим в период наивысшего расцвета империи 98—117 годы н.э. Именно в период правления Траяна население Рима достигло, по современным оценкам, почти миллион человек, а территория империи достигла своих максимальных размеров. Великолепные римские дороги соединяют города и обеспечивают быструю и эффективную торговлю. Вас окружает множество монументальных зданий, построенных Римской империей, таких как Колизей, Пантеон и Форум Романум, которые до сих пор остаются иконами архитектуры.",
                "routes": [[
                    "id": "1.1.1.1",
                    "title": "Площадь в центре города",
                    "description": "Вокруг слышен шум, все бегут по своим делам. На площади можно посетить различные религиозные храмы и святилища. Некоторые из наиболее известных храмов на площади Рима включают храм Юпитера, храм Венеры и Ромы, а также храм Солнца. Рядом множество торговых площадей и рынков. В Амфитеатре Помпея как раз проходит выступление. Рекомендуем прогуляться и насладиться красотой города."
                ], [
                    "id": "1.1.1.2",
                    "title": "Колизей",
                    "description": "В честь победы Траяна в Дакии гладиаторские игры продлятся 123 дня. Если вы не поклонник подобных мероприятияй, можно просто рассмотреть грандиозность сооружения самого амфитеатра и погулять рядом по форуму, купить сувениры и погрузиться в древнеримскую жизнь."
                ]]
            ] as [String : Any], [
                "id": "1.1.2",
                "title": "1973 год",
                "description": "Добро пожаловать в город Манарола в 1973 г. Вы в крошечном городке в регионе Лигурия на северо-западе Италии. Вас окружают красивые многоэтажные здания в стиле местной архитектуры, расположенные на узких улочках, которые виляются в гору, пляжи и кристально чистая вода Лигурийского моря, а также красивые виды на окружающие горы и холмы.",
                "routes": [[
                    "id": "1.1.2.1",
                    "title": "Пляж",
                    "description": "Здесь нет песка, но есть красивые виды на море и горы. Погода отменная, самое время насладиться ярким солнцем и кристально чистой водой идеальной температуры."
                ], [
                    "id": "1.1.2.2",
                    "title": "Рыбный ресторан",
                    "description": "Манароле славится своей кухней, в том числе свежими морепродуктами, которые можно попробовать в местных ресторанах и кафе. Сегодня был богатый улов, выбирайте любое блюдо на свой вкус и не ошибетесь!"
                ]]
            ]]
        ] as [String : Any], [
            "id": "1.2",
            "title": "Солнечная система",
            "years": [[
                "id": "1.2.1",
                "title": "2067 год",
                "description": "Вы попали в 2067 год в Солнечной системе. Неурожай и пыльные бури угрожают выживанию человечества.",
                "routes": [[
                    "id": "1.2.1.1",
                    "title": "Земля, штат Колорадо",
                    "description": "Вы оказались на кукурузном поле. Сложно дышать и почти ничего не видно. Надвигается пыльная буря. Вдалеке виден небольшой дом. Настоятельно рекомендуем побыстрее добежать до него и укрыться от надвигающейся опасности."
                ], [
                    "id": "1.2.1.2",
                    "title": "Планета Миллер",
                    "description": "Вокруг вас океан. Пожалуй, планета Миллер была не лучшим выбором для путешествия. Гигантская приливная волна уже виднеется на горизонте и мчится к вам с невероятной скоростью. Рекомендуем как можно скорее переместиться в другое место."
                ]]
            ] as [String : Any], [
                "id": "1.2.2",
                "title": "2157 год",
                "description": "Вы попали в 2157 год в Солнечной системе, где обнаружен пространственно-временной тоннель, чтобы обойти ограничения полёта человека в космосе и покорить огромные расстояния на межзвёздном корабле. Перед вами невероятные виды на звезды и планеты, которые в привычных условиях земной жизни не могут быть наблюдаемы.",
                "routes": [[
                    "id": "1.2.2.1",
                    "title": "Земля, штат Колорадо",
                    "description": "Вокруг вас пустыня. Все люди давно переселились на Орбиту Сатурна. Пожалуй, это не самый удачный Ваш выбор. Может, отправитесь куда-нибудь в другое место?"
                ], [
                    "id": "1.2.2.2",
                    "title": "Орбита Сатурна",
                    "description": "Добро пожаловать на Базу Купер, одно из космических поселений на орбите Сатурна, куда переселилось человечество. Рекомендуем отведать местные блюда и напитки, которых раньше не существовало на Земле, а также прогуляться по воссозданным паркам с планеты Земля."
                ]]
            ]]
        ]]
    ] as [String : Any], [
        "id": "2",
        "title": "Альтернативная реальность",
        "locations": [[
            "id": "2.1",
            "title": "Хогвартс",
            "years": [[
                "id": "2.1.1",
                "title": "2000 год",
                "description": "Добро пожаловать в Хогвартс в 2000 году! Рядом с вами горное озеро невероятной красоты.  Здание школы, расположенное недалеко от озера, выглядит мрачноватым и таинственным. Стены замка выполнены из серого камня, крыши покрыты зеленой медью, а башни тянутся к небу, словно обращаясь к волшебному миру. На территории Хогвартса есть несколько дворов, лес и множество тайных проходов и лестниц, которые могут привести в самые неожиданные места.",
                "routes": [[
                    "id": "2.1.1.1",
                    "title": "Хижина Хагрида",
                    "description": "Вы оказались в небольшом и уютном помещение. Вам повезло, великан только что поставил чай с ароматными травами и вот-вот будет готов его узнаваемый суп-пюре. Но будьте острожны, дракон в корзине у окна сегодня научился плеваться огнем и рад всем продемонстрировать свои умения."
                ], [
                    "id": "2.1.1.2",
                    "title": "Библиотека Хогвартса",
                    "description": "Вы оказались в огромном помещении, наполненном до отказа книгами. Вокруг стоят книжные шкафы и шкафы с ящиками, каждый из которых содержит множество книг, исторических документов и других материалов. На стенах портреты бывших ректоров Хогвартса и других знаменитых волшебников и колдунов, а также различные карты и другие предметы, связанные с магическим миром. Помещение озарено ярким светом, который падает через большие окна, расположенные вдоль стен, создавая тихую, приятную и умиротворяющую атмосферу для чтения и изучения."
                ]]
            ] as [String : Any], [
                "id": "2.1.2",
                "title": "1980 год",
                "description": "Вы в тайной магической части Лондона в 1980 году. Волан-де-Морт уже начал собирать армию с целью захвата власти над магическим миром. Это один из самых мрачных периодов истории выбранной вселенной.",
                "routes": [[
                    "id": "2.1.2.1",
                    "title": "Косой переулок",
                    "description": "Вы оказались в Косом переулке. Льет ледяной дождь и тучи сгущаются все больше. Вокруг множество магазинов с магическими предметами, но почти все они закрыты. Не рекомендуем задерживаться здесь слишком долго, так как велика вероятность наткнуться на Пожирателей смерти, а они не очень приветствуют магглов."
                ], [
                    "id": "2.1.2.2",
                    "title": "Запретный лес",
                    "description": "Вокруг вас мрачый и загадочный лес, расположенный на северной окраине территории Хогвартса. Он известен своей опасностью. Даже ученикам-магам запрещено входить в лес без разрешения, тем более, это не самое лучшее место для беззащитного маггла. Лес населен множеством диких и опасных существ, в том числе гигантскими пауками, кентаврами и другими тварями. Кроме того, в лесу происходят необъяснимые явления, такие как перемещения иллюзий и т.д. "
                ]]
            ]]
        ] as [String : Any], [
            "id": "2.2",
            "title": "Средиземье",
            "years": [[
                "id": "2.2.1",
                "title": "3015 год Третьей Эпохи",
                "description": "Добро пожаловать в Средиземье в 3015 год Третьей Эпохи. Большая часть жителей живет в мире и гармонии. Вас ждут прекрасные ландшафты и природа, а также культурные достижения многих государств и народов.",
                "routes": [[
                    "id": "2.2.1.1",
                    "title": "Шир",
                    "description": "Вы оказались в небольшом, но уютном поселке Хоббитон, расположенном в живописной местности, окруженной зелеными холмами и полями. Дома Хоббитов, с низкими крышами, округлыми дверями и окнами, расположены вдоль узких улочек и маленьких площадей. В центре поселка большое дерево, известное как Партия. Рекомендует заглянуть на праздник Урожая, он как раз в самом разгаре!"
                ], [
                    "id": "2.2.1.2",
                    "title": "Лориэн",
                    "description": "Вы оказались в огромном, невероятной красоты эльфийском городе, расположенном на реке Келебрант к юго-западу от Мории. Вокруг вас гигантские золотистые деревья Маллорн. Рекомендуем прогуляться по изящным мостам и непременно взглянуть на дворец с изысканными винтовыми лестницами и огромными арками."
                ]]
            ] as [String : Any], [
                "id": "2.2.2",
                "title": "3021 год Четвёртой эпохи",
                "description": "Добро пожаловать в четвертую эпоху Средиземья. Владыка Тьмы Саурон повержен и уничтожено Его кольцо в Роковой горе. Мир находился в состоянии перемен и усиленной трансформации. Возрождаются старые города и создаются новые. Один из лучших выборов для путешественника.",
                "routes": [[
                    "id": "2.2.2.1",
                    "title": "Минас Анор",
                    "description": "Вы оказались в городе Минас Анор невероятной красоты, который построен на скале, являющейся отрогом горы Миндо. Реконструированный после военных действий он вновь обрел свое прежнее величие. В городе есть множество достопримечательностей, которые непременно привлекут ваше внимание. Рекомендуем прогуляться по городскому парку на холме с видом на горы и заглянуть и посетить Дворец Советов."
                ], [
                    "id": "2.2.2.2",
                    "title": "Валимар",
                    "description": "Вы оказались в городе Валимар, важном культурном и экономическом центре Средиземья. В Валимаре можно увидеть роскошные дворцы, музеи, театры, библиотеки и магазины. В центре города находится Валимарский дворец, резиденция короля Элессара. Также стоит обратить внимание на знаменитый музей Средиземья, где собраны уникальные артефакты и редкие экспонаты, связанные с историей и культурой Средиземья."
                ]]
            ]]
        ]]
    ]]
    
    
//MARK: - Quiz Data Store
    
    // добавить данные для квиза
    
//MARK: - Team Data Store
    
    let team = [[
            "id": "1",
            "name": "Julia",
            "secondName": "Kazarina",
            "telegram": "@ju_kazarina",
            "photo": "JuliaKazarina"
        ], [
            "id": "2",
            "name": "Elena",
            "secondName": "Demchenko",
            "telegram": "@elena_demco",
            "photo": "ElenaDemchenko"
        ], [
            "id": "3",
            "name": "Pavel",
            "secondName": "Karunnyj",
            "telegram": "@paveld3zu",
            "photo": "PavelKarunnyj"
        ], [
            "id": "4",
            "name": "Elena",
            "secondName": "Sharipova",
            "telegram": "@elena_sh_r",
            "photo": "ElenaSharipova"
        ]
    ]
    
    
    
    private init() {}
}




