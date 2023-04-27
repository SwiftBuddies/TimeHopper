//
//  Travel.swift
//  TimeHopper
//
//  Created by Юлия Ястребова on 27.04.2023.
//

struct Route {
//    маршрут, доступный в определенном годе, локации, вселенной
    let routeName: String
    let routeDescription: String
    let routeImage: String
    let routeYear: Year
    let routeLocation: Location
    let routeUniverse: Universe
}

enum Year {
//    список лет
}

struct Location {
//   локации 
    let locationName: String
    let year: Year
    let locationUniverse: Universe
}

enum Universe {
//    список вселенных
}

struct Question {
    let question: String
    let answer: Any
}

struct TeamMember {
    let name: String
    let surname: String
    let photo: String
    let telegram: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}
