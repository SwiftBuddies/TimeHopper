//
//  Travel.swift
//  TimeHopper
//
//  Created by Юлия Ястребова on 27.04.2023.
//

//struct Route {
//
//    let routeUniverse: String
//    let routeLocation: String
//    let routeYear: Int
//    let routeName: String
//    let routeDescription: String
//   // let routeImage: String
//
//    static func getRoute() -> [Route] {
//
//        var routes: [Route] = []
//
//        let universes = DataStore.shared.universes
//        let locations = DataStore.shared.locations
//        let years = DataStore.shared.years
//        let routeNames = DataStore.shared.routeNames
//        let routeDescriptions = DataStore.shared.routeDescriptions
//
//        // тут не уверена
//        let iterationCount = max(
//            universes.count,
//            locations.count,
//            years.count,
//            routeNames.count,
//            routeDescriptions.count
//        )
//
//        for i in 0..<iterationCount {
//            let route = Route(
//                routeUniverse: universes[i],
//                routeLocation: locations[i],
//                routeYear: years[i],
//                routeName: routeNames[i],
//                routeDescription: routeDescriptions[i]
//               // routeImage: "" // сомневаюсь как ту правильно
//                )
//            routes.append(route)
//        }
//
//        return routes
//    }
//}

struct Universe {
    let title: String
    let locations: [Location]
    
    static func getUniverses(from universesFromDataStore: [[String : Any]]) -> [Universe] {
        var universes: [Universe] = []
        
        for universeFromDataStore in universesFromDataStore {
            let universe = Universe(
                title: universeFromDataStore["title"] as! String,
                locations: Location.getLocations(from: universeFromDataStore["locations"] as! [[String : Any]])
            )
            universes.append(universe)
        }
        
        return universes
    }
}

struct Location {
    let title: String
    let years: [Year]
    
    static func getLocations(from locationsFromDataStore: [[String : Any]]) -> [Location] {
        var locations: [Location] = []
        
        for locationFromDataStore in locationsFromDataStore {
            let location = Location(
                title: locationFromDataStore["title"] as! String,
                years: Year.getYears(from: locationFromDataStore["years"] as! [[String : Any]])
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
    
    static func getYears(from yearsFromDataStore: [[String : Any]]) -> [Year] {
        var years: [Year] = []
        
        for yearFromDataStore in yearsFromDataStore {
            let year = Year(
                title: yearFromDataStore["title"] as! String,
                description: yearFromDataStore["description"] as! String,
                routes: Route.getRoutes(from: yearFromDataStore["routes"] as! [[String : Any]])
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
