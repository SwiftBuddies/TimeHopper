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
        "title": "Наш мир",
        "locations": [[
            "title": "Земля, Римская империя",
            "years": [[
                "title": "98—117 годы н.э.",
                "description": "Вам повезло, Вы оказались в самом центре Рима в период наивысшего расцвета империи. Именно в период правления Траяна население Рима достигло, по современным оценкам, почти миллион человек, а территория империи достигла своих максимальных размеров.",
                "routes": [[
                    "title": "Площадь в центре города",
                    "description": "Вокруг слышен шум, все бегут по своим делам. Рядом с площадью можно увидеть много красивых общественных зданий: храмы, бани и т.п. Не забудьте заглянуть в ближайшую таверну и отведать великолепные древнеримские ньокки. Кулинарное искусство начало развиваться в III в. до н. э. и при империи достигло небывалых высот."
                ], [
                    "title": "Колизей",
                    "description": "В честь победы Траяна в Дакии гладиаторские игры продлятся 123 дня. Если вы не поклонник подобных мероприятияй, можно просто рассмотреть грандиозность сооружения самого амфитеатра и погулять рядом по форуму, купить сувениры и погрузиться в древнеримскую жизнь."
                ]]
            ] as [String : Any], [
                "title": "year2",
                "description": "description2",
                "routes": [[
                    "title": "Title1",
                    "description": "description1"
                ], [
                    "title": "Title2",
                    "description": "description2"
                ]]
            ]]
        ] as [String : Any], [
            "title": "Солнечная система",
            "years": [[
                "title": "2157 год",
                "description": "Вы попали в будущее, где обнаружен пространственно-временной тоннель, чтобы обойти ограничения полёта человека в космосе и покорить огромные расстояния на межзвёздном корабле.",
                "routes": [[
                    "title": "Земля, штат Колорадо",
                    "description": "Вокруг вас пустыня. Все люди давно переселились на Орбиту Сатурна. Пожалуй, это не самый удачный Ваш выбор. Может, отправитесь куда-нибудь в другое место?"
                ], [
                    "title": "Орбита Сатурна",
                    "description": "Добро пожаловать на Базу Купер, одно из космических поселений на орбите Сатурна, куда переселилось человечество. Рекомендуем отведать местные блюда и напитки, которых раньше не существовало на Земле, а также прогуляться по воссозданным паркам с планеты Земля."
                ]]
            ] as [String : Any], [
                "title": "year2",
                "description": "description2",
                "routes": [[
                    "title": "Title1",
                    "description": "description1"
                ], [
                    "title": "Title2",
                    "description": "description2"
                ]]
            ]]
        ]]
    ] as [String : Any], [
        "title": "Альтернативная реальность",
        "locations": [[
            "title": "Хогвартс",
            "years": [[
                "title": "2000 год",
                "description": "Рядом с вами горное озеро невероятной красоты. Совсем недалеко старинный восьмиэтажный замок. Настоятельно рекомендуем прогуляться к нему.",
                "routes": [[
                    "title": "Хижина Хагрида",
                    "description": "Вам повезло, великан только что поставил чай с ароматными травами и вот-вот будет готов пирог. Но будьте острожны, дракон в корзине у окна сегодня научился плеваться огнем и рад всем продемонстрировать свои умения."
                ], [
                    "title": "Title2",
                    "description": "description2"
                ]]
            ] as [String : Any], [
                "title": "year2",
                "description": "description2",
                "routes": [[
                    "title": "Title1",
                    "description": "description1"
                ], [
                    "title": "Title2",
                    "description": "description2"
                ]]
            ]]
        ] as [String : Any], [
            "title": "locationTitle2",
            "years": [[
                "title": "year1",
                "description": "description1",
                "routes": [[
                    "title": "Title1",
                    "description": "description1"
                ], [
                    "title": "Title2",
                    "description": "description2"
                ]]
            ] as [String : Any], [
                "title": "year2",
                "description": "description2",
                "routes": [[
                    "title": "Title1",
                    "description": "description1"
                ], [
                    "title": "Title2",
                    "description": "description2"
                ]]
            ]]
        ]]
    ]
    ]
    
    
//MARK: - Quiz Data Store
    
    // добавить данные для квиза
    
//MARK: - Team Data Store
    
    // добавить данные команды
    
    
    
    private init() {}
}




