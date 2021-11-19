import UIKit

struct Lecture {
    var title: String
    var maxStudent: Int = 10
    var numOfRegisterd: Int = 0
    
    func remainSeats() -> Int {
        let remainSeats = maxStudent - numOfRegisterd
        return remainSeats
    }
    
    // struct에서 프로퍼티를 변형시킬때, mutating 키워드 사용
    mutating func register() {
        // 등록된 학생수 증가시키기
        numOfRegisterd += 1
    }
    
    static let target: String = "누구나 배우길 원한다."
    
    static func 소속학원이름() -> String {
        return "패캠"
    }
}

var lec = Lecture(title: "iOS Basic")

lec.remainSeats()

lec.register()
lec.register()
lec.register()
lec.register()
lec.register()

lec.remainSeats()

Lecture.소속학원이름()

struct Math {
    static func abs(value: Int) -> Int {
        if value > 0 {
            return value
        } else {
            return -value
        }
    }
}

Math.abs(value: -20)

// 제곱, 반값
extension Math {
    static func squre(value: Int) -> Int {
        return value * value
    }
    
    static func half(value: Int) -> Int {
        return value / 2
    }
}

extension Int {
    func square() -> Int {
        return self * self
    }
    
    func half() -> Int {
        return self/2
    }
}

var val = 3
val.square()
val.half()
