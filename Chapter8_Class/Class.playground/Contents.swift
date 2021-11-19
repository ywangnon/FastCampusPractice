import UIKit

// 처음 주어진 코드
struct Grade {
    var letter: Character
    var points: Double
    var credits: Double
}

class Person {
    var firstName: String
    var lastName: String

    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }

    func printMyName() {
        print("My name is \(firstName) \(lastName)")
    }
}

class Student: Person {
    var grades: [Grade] = []
    
    // Person에서 상속
//    var firstName: String
//    var lastName: String
//
//    init(firstName: String, lastName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//    }
//
//    func printMyName() {
//        print("My name is \(firstName) \(lastName)")
//    }
}

let jay = Person(firstName: "Jay", lastName: "Lee")
let jason = Student(firstName: "jason", lastName: "Lee")

jay.firstName
jason.firstName

jay.printMyName()
jason.printMyName()

let math = Grade(letter: "B", points: 8.5, credits: 3)
let history = Grade(letter: "A", points: 10.0, credits: 3)
jason.grades.append(math)
jason.grades.append(history)
//jay.grades // 에러(Person)에는 점수 프로퍼티가 없음

jason.grades.count

// 학생인데 운동선수
class StudentAthelte: Student {
    var minimumTrainingTime: Int = 2
    var trainedTime: Int = 0
    
    func train() {
        trainedTime += 1
    }
}

// 운동수인데 축구선수
class FootballPlayer: StudentAthelte {
    var footballTeam = "FC Swift"
    
    override func train() {
        trainedTime += 2
    }
}

var athelete1 = StudentAthelte(firstName: "Yuna", lastName: "Kim")
var athelete2 = FootballPlayer(firstName: "Heung", lastName: "Son")

athelete1.firstName
athelete2.firstName

athelete1.grades.append(math)
athelete2.grades.append(math)

athelete1.minimumTrainingTime
athelete2.minimumTrainingTime

athelete2.footballTeam
//athelete1.footballTeam -- error

athelete1.train()
athelete1.trainedTime

athelete2.train()
athelete2.trainedTime

athelete1 = athelete2 as StudentAthelte // 업캐스팅
athelete1.train()
athelete1.trainedTime // athelete2가 2시간했는데 +2 됨

// athelete1.footballTeam // -- error
// athelete1은 StudentAthelte이기 때문에 footballTeam 접근 불가능하다.

// 다운캐스팅
// 다운캐스팅은 오류가 날 수 있기때문에 if let으로 확인 후 접근
if let son = athelete1 as? FootballPlayer {
    print("---> team:\(son.footballTeam)")
}


//struct Grade {
//    var letter: Character
//    var points: Double
//    var credits: Double
//}
//
//class Person {
//    var firstName: String
//    var lastName: String
//
//    init(firstName: String, lastName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//    }
//
//    func printMyName() {
//        print("My name is \(firstName) \(lastName)")
//    }
//}
//
//class Student: Person {
//    var grades: [Grade] = []
//}
//
//
//let jay = Person(firstName: "Jay", lastName: "Lee")
//let jason = Student(firstName: "Jasson", lastName: "Lee")
//
//jay.firstName
//jason.firstName
//
//jay.printMyName()
//jason.printMyName()
//
//let math = Grade(letter: "B", points: 8.5, credits: 3)
//let history = Grade(letter: "A", points: 10.0, credits: 3)
//
//jason.grades.append(math)
//jason.grades.append(history)
////jay.grades
//
//jason.grades.count
//
//
//
//// 학생인데 운동선수
//class StudentAthlete: Student {
//    var minimumTrainingTime: Int = 2
//    var trainedTime: Int = 0
//
//    func train() {
//        trainedTime += 1
//    }
//}
//
//// 운동선인데 축구선수
//class FootballPlayer: StudentAthlete {
//    var footballTeam = "FC Swift"
//
//    override func train() {
//        trainedTime += 2
//    }
//}
//
//// Person > Student > Athelete > Football Player
//
//var athelete1 = StudentAthlete(firstName: "Yuna", lastName: "Kim")
//var athelete2 = FootballPlayer(firstName: "Heung", lastName: "Son")
//
//athelete1.firstName
//athelete2.firstName
//
//athelete1.grades.append(math)
//athelete2.grades.append(math)
//
//athelete1.minimumTrainingTime
//athelete2.minimumTrainingTime
//
////athelete1.footballTeam
//athelete2.footballTeam
//
//athelete1.train()
//athelete1.trainedTime
//
//athelete2.train()
//athelete2.trainedTime
//
//
//
//athelete1 = athelete2 as StudentAthlete
//athelete1.train()
//athelete1.trainedTime
//
//
//if let son = athelete1 as? FootballPlayer {
//    print("--> team:\(son.footballTeam)")
//}
