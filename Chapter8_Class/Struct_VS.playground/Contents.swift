import UIKit

struct PersonStruct {
    var firstName: String
    var lastName: String
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    mutating func uppercaseName() {
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
}

class PersonClass {
    var firstName: String
    var lastName: String
    
    init(first: String, last: String) {
        firstName = first
        lastName = last
    }
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    func uppercaseName() {
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
}

var personStruct1 = PersonStruct(firstName: "Jason", lastName: "Lee")
var personStruct2 = personStruct1

var personClass1 = PersonClass(first: "Jason", last: "Lee")
var personClass2 = personClass1

personStruct2.firstName = "Jay"
personStruct1.firstName
personStruct2.firstName

personClass2.firstName = "Jay"
personClass1.firstName
personClass2.firstName

personClass2 = PersonClass(first: "Bob", last: "Lee")
personClass1.firstName
personClass2.firstName

personClass1 = personClass2
personClass1.firstName
personClass2.firstName
