import UIKit

// 처음 코드
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
    
    override init(firstName: String, lastName: String) {
        super.init(firstName: firstName, lastName: lastName)
    }
    
    convenience init(student: Student) {
        self.init(firstName: student.firstName, lastName: student.lastName)
    }
    
}

// 학생인데 운동선수
class StudentAthlete: Student {
    var minimumTrainingTime: Int = 2
    var trainedTime: Int = 0
    var sports: [String]
    
    init(firstName: String, lastName: String, sports: [String]) {
        // 자식클래스의 프로퍼티를 먼저 세팅한 후, 부모클래스의 값을 세팅해 줌
        // 규칙: 자식클래스의 프로퍼티를 먼저 세팅하고 부모클래스를 세팅해줌
        // phase 1
        self.sports = sports
        super.init(firstName: firstName, lastName: lastName)
        
        // phase 2
        self.train()
    }
    
    convenience init(name: String) {
        self.init(firstName: name, lastName: "", sports: [])
    }
    
    func train() {
        trainedTime += 1
    }
}

// 운동선인데 축구선수
class FootballPlayer: StudentAthlete {
    var footballTeam = "FC Swift"

    override func train() {
        trainedTime += 2
    }
}

let student1 = Student(firstName: "Jason", lastName: "Lee")
let student1_1 = Student(student: student1)
let student2 = StudentAthlete(firstName: "Jay", lastName: "Lee", sports: ["Football"])
let student3 = StudentAthlete(name: "Mike")
