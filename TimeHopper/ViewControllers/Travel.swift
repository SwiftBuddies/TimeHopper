//
//  Travel.swift
//  TimeHopper
//
//  Created by Юлия Ястребова on 27.04.2023.
//

struct Route {
    
    let routeUniverse: String
    let routeLocation: String
    let routeYear: Int
    let routeName: String
    let routeDescription: String
    let routeImage: String
    
    static func getRoute() -> [Route] {
        
        var routes: [Route] = []
        
        let universes = DataStore.shared.universes
        let locations = DataStore.shared.locations
        let years = DataStore.shared.years
        let routeNames = DataStore.shared.routeNames
        let routeDescriptions = DataStore.shared.routeDescriptions
        
        let iterationCount = min(
            universes.count,
            locations.count,
            years.count,
            routeNames.count,
            routeDescriptions.count
        )
        
        for i in 0..<iterationCount {
            let route = Route(routeUniverse: universes[i],
                              routeLocation: locations[i],
                              routeYear: years[i],
                              routeName: routeNames[i],
                              routeDescription: routeDescriptions[i],
                              routeImage: "")
            routes.append(route)
        }
        
        return routes
    }
}


//MARK: - Quiz Model
struct QuizQuestion {
    let quizTitle: String
    let quizAnswers: [QuizAnswer]
}

struct QuizAnswer {
    let title: String
    let time: QuizResult
}

enum QuizResult {
  
}

//MARK: - Team Model
struct TeamMember {
    let name: String
    let surname: String
    let photo: String
    let telegram: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}
