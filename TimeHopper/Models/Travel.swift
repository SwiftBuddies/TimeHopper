//
//  Travel.swift
//  TimeHopper
//
//  Created by SwiftBuddies on 27.04.2023.
//

//MARK: - Route Model
struct Universe {
    let id: String
    let title: String
    let locations: [Location]
    let type: Question

    static func getUniverses(from universesFromDataStore: [[String : Any]]) -> [Universe] {
        var universes: [Universe] = []
        
        for universeFromDataStore in universesFromDataStore {
            let universe = Universe(
                id: universeFromDataStore["id"] as! String,
                title: universeFromDataStore["title"] as! String,
                locations: Location.getLocations(from: universeFromDataStore["locations"] as! [[String : Any]]), type: .universe
            )
            universes.append(universe)
        }
        
        return universes
    }
}

struct Location {
    let id: String
    let title: String
    let years: [Year]
    let type: Question
    
    static func getLocations(from locationsFromDataStore: [[String : Any]]) -> [Location] {
        var locations: [Location] = []
        
        for locationFromDataStore in locationsFromDataStore {
            let location = Location(
                id: locationFromDataStore["id"] as! String,
                title: locationFromDataStore["title"] as! String,
                years: Year.getYears(from: locationFromDataStore["years"] as! [[String : Any]]), type: .location
            )
            locations.append(location)
        }
        
        return locations
    }
}

struct Year {
    let id: String
    let title: String
    let time: DataStore.Time
    let description: String
    let routes: [Route]
    let type: Question
    
    static func getYears(from yearsFromDataStore: [[String : Any]]) -> [Year] {
        var years: [Year] = []
        
        for yearFromDataStore in yearsFromDataStore {
            let year = Year(
                id: yearFromDataStore["id"] as! String,
                title: yearFromDataStore["title"] as! String,
                time: yearFromDataStore["time"] as! DataStore.Time,
                description: yearFromDataStore["description"] as! String,
                routes: Route.getRoutes(from: yearFromDataStore["routes"] as! [[String : Any]]), type: .year
            )
            years.append(year)
        }
        
        return years
    }
    
    static func getYears(fromUniverse universeId: String, in universes: [Universe], andTime time: DataStore.Time) -> [Year] {
        var years: [Year] = []
        
        for universe in universes {
            guard universe.id == universeId else { continue }
            
            for location in universe.locations {
                for year in location.years {
                    guard year.time == time else { continue }
                    years.append(year)
                }
            }
        }
        
        return years
    }
}

struct Route {
    let id: String
    let title: String
    let description: String
    
    static func getRoutes(from routesFromDataStore: [[String : Any]]) -> [Route] {
        var routes: [Route] = []
        
        for routeFromDataStore in routesFromDataStore {
            let route = Route(
                id: routeFromDataStore["id"] as! String,
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
    let id: String
    let title: String
    let answers: [QuizAnswer]
    
    static func getQuizQuestions(from quizQuestionsFromDataStore: [[String : Any]]) -> [QuizQuestion] {
        var quizQuestions: [QuizQuestion] = []
        
        for quizQuestionFromDataStore in quizQuestionsFromDataStore {
            let quizQuestion = QuizQuestion(
                id: quizQuestionFromDataStore["id"] as! String,
                title: quizQuestionFromDataStore["title"] as! String,
                answers: QuizAnswer.getQuizAnswers(from: quizQuestionFromDataStore["answers"] as! [[String : Any]])
            )
            quizQuestions.append(quizQuestion)
        }
        
        return quizQuestions
    }
}

struct QuizAnswer {
    let id: String
    let title: String
    let universeId: String
    let time: DataStore.Time
    
    static func getQuizAnswers(from quizAnswersFromDataStore: [[String : Any]]) -> [QuizAnswer] {
        var quizAnswers: [QuizAnswer] = []
        
        for quizAnswerFromDataStore in quizAnswersFromDataStore {
            let quizAnswer = QuizAnswer(
                id: quizAnswerFromDataStore["id"] as! String,
                title: quizAnswerFromDataStore["title"] as! String,
                universeId: quizAnswerFromDataStore["universeId"] as! String,
                time: quizAnswerFromDataStore["time"] as! DataStore.Time
            )
            quizAnswers.append(quizAnswer)
        }
        
        return quizAnswers
    }
}

//MARK: - Team Model
struct TeamMember {
    let name: String
    let secondName: String
    let telegram: String
    let photo: String
    
    var fullName: String {
        "\(name) \(secondName)"
    }
    
    static func getTeamMembers(from membersFromDataStore: [[String : Any]]) -> [TeamMember] {
        var members: [TeamMember] = []
        
        for memberFromDataStore in membersFromDataStore {
            let member = TeamMember(
                name: memberFromDataStore["name"] as! String,
                secondName: memberFromDataStore["secondName"] as! String,
                telegram: memberFromDataStore["telegram"] as! String,
                photo: memberFromDataStore["photo"] as! String
            )
            members.append(member)
        }
        
        return members
    }
}
