//
//  DataStore.swift
//  TimeHopper
//
//  Created by SwiftBuddies on 25.04.2023.
//

final class DataStore {
    
    static let shared = DataStore()
    
//MARK: - Route Data Store
    let universes = [
        "Человеческий мир",
        "Фантазийный мир",
        "Тайный маршрут"
    ]
    
    let locations =  [
        "Эра человека разумного",
        "Древний Египет",
        "Земля",
        "Орбита Сатурна",
        "Хогвартс",
        "Галактика"
    ]
    
    let years = [1,2,3,4] // заполнить
    let routeNames = [" ", " "] // заполнить
    let routeDescriptions = [" ", " "] // заполнить
    let routeImages = [" ", " "] // заполнить
    
//MARK: - Quiz Data Store
    
    // добавить данные для квиза
    
//MARK: - Team Data Store
    
    // добавить данные команды
    
    
    
    private init() {}
}
