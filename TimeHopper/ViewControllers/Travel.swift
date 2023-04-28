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
}

struct Location {
    let locationTitle: String
    let years: [Years]
}

struct Years {
    let year: Int
    let routes: [Route]
}

struct Route {
    let routeTitle: String
    let routeDescription: String
    
//    static func getRoute() -> [(String, String)] {
//
//        var routes = []
//
//        for (routeTitle, routeDescription) in тут словарь {
//            routesDescriptions.append((routeTitle, routeDescription))
//        }
//        return routesDescriptions
//    }
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
