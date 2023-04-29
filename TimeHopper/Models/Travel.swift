//
//  Travel.swift
//  TimeHopper
//
//  Created by Юлия Ястребова on 27.04.2023.
//

struct Universe {
    let title: String
    let locations: [Location]
    let type: Question

    static func getUniverses(from universesFromDataStore: [[String : Any]]) -> [Universe] {
        var universes: [Universe] = []
        
        for universeFromDataStore in universesFromDataStore {
            let universe = Universe(
                title: universeFromDataStore["title"] as! String,
                locations: Location.getLocations(from: universeFromDataStore["locations"] as! [[String : Any]]), type: .universe
            )
            universes.append(universe)
        }
        
        return universes
    }
}

struct Location {
    let title: String
    let years: [Year]
    let type: Question
    
    static func getLocations(from locationsFromDataStore: [[String : Any]]) -> [Location] {
        var locations: [Location] = []
        
        for locationFromDataStore in locationsFromDataStore {
            let location = Location(
                title: locationFromDataStore["title"] as! String,
                years: Year.getYears(from: locationFromDataStore["years"] as! [[String : Any]]), type: .location
            )
            locations.append(location)
        }
        
        return locations
    }
}

struct Year {
    let title: String
    let description: String
    let routes: [Route]
    let type: Question
    
    static func getYears(from yearsFromDataStore: [[String : Any]]) -> [Year] {
        var years: [Year] = []
        
        for yearFromDataStore in yearsFromDataStore {
            let year = Year(
                title: yearFromDataStore["title"] as! String,
                description: yearFromDataStore["description"] as! String,
                routes: Route.getRoutes(from: yearFromDataStore["routes"] as! [[String : Any]]), type: .year
            )
            years.append(year)
        }
        
        return years
    }
}

struct Route {
    let title: String
    let description: String
    
    static func getRoutes(from routesFromDataStore: [[String : Any]]) -> [Route] {
        var routes: [Route] = []
        
        for routeFromDataStore in routesFromDataStore {
            let route = Route(
                title: routeFromDataStore["title"] as! String,
                description: routeFromDataStore["description"] as! String
            )
            routes.append(route)
        }
        
        return routes
    }
}


enum Question {
    case universe
    case location
    case year
    
    var textQuestion: String {
        switch self {
        case .universe:
            return "Выберите вселенную"
        case .location:
            return "Какую локацию выберем?"
        case .year:
            return "В какой год отправимся?"
        }
    }
}

//MARK: - Quiz Model
struct QuizQuestion {
    let quizTitle: String
    let quizAnswers: [QuizAnswer]
    
    static func getQuizQuestion() -> [QuizQuestion] {
        [] //тут надо переписать метод используя DataStore
    }
}

struct QuizAnswer {
    let title: String
    let time: QuizResult
}

enum QuizResult: Int {
    case humanPast = 1990// год.random!!!
    case humanFuture = 1991
    case alternativeWorld = 1992
    
    var definition: String {
        switch self {
        case .humanPast:
            return "page past"
        case .humanFuture:
            return "page future"
        case .alternativeWorld:
            return "page alternative world" //model random!!!
        }
    }
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
    
    static func getMember() {
        // добавить метод
    }
}
