import UIKit

struct Person {
    // Stored Property
    var firstName: String {
        // 바뀌기 직전
        willSet {
            print("willSet: \(firstName) --> \(newValue)")
        }
        
        // 바뀐 직후
        didSet {
            print("didSet: \(oldValue) --> \(firstName)")
        }
    }
    var lastName: String
    
    // lazy
    // 접근 될 때 생성. 기존엔 오브젝트 생성될 때 프로퍼티 생성
    lazy var isPopular: Bool = {
        if fullName == "Jay Park" {
            return true
        } else {
            return false
        }
    }()
    // Computed Property
    // read only 기본
    // setter, getter를 사용해서 값을 받을 수도 있다.
    // var 키워드만 가능
    var fullName: String {
        get {
            return "\(firstName) \(lastName)"
        }
        
        set {
            if let firstName = newValue.components(separatedBy: " ").first {
                self.firstName = firstName
            }
            if let lastName = newValue.components(separatedBy: " ").last {
                self.lastName = lastName
            }
        }
        
    }
    // 타입 프로퍼티
    static let isAlien: Bool = false
}

var person = Person(firstName: "Jason", lastName: "Lee")

person.firstName
person.lastName

person.firstName = "Jim"
person.lastName = "Kim"

person.firstName
person.lastName

person.fullName
person.fullName = "킴 밥"

person.fullName

Person.isAlien

person.fullName = "Jay Park"

person.isPopular
