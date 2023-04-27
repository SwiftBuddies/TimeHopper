//
//  DataStore.swift
//  TimeHopper
//
//  Created by SwiftBuddies on 25.04.2023.
//

final class DataStore {
    
    static let shared = DataStore()
    
    let universes = [" ", " ", " "]
    let locations =  [" ", " ", "тут тайный маршрут"]
    let years = [1,2,3,4]
    let routeNames = [" ", " "]
    let routeDescriptions = [" ", " "]
    
    
    
    // тут не всё
    
    
    private init() {}
}
