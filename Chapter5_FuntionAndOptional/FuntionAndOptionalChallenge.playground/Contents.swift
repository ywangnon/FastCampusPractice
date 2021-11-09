import UIKit

/**
 도전과제
 
 1. 성, 이름을 받아서 fullname을 출력하는 함수 만들기
 
 2. 1번에서 만든 함수인데, 파라미터 이름을 제거하고 fullname 출력하는 함수 만들기
 
 3. 성, 이름을 받아서 fullname return 하는 함수 만들기
 */

// 1
//func printFullName(firstName: String, lastName: String) {
//    print(firstName + lastName)
//}

// 강의
func printFullName(firstName: String, lastName: String) {
    print("fullname is \(firstName) \(lastName)")
}

printFullName(firstName: "Jason", lastName: "Lee")

// 2

//func printFullNameNoParameter(_ firstName: String, _ lastName: String) {
//    print(firstName + lastName)
//}

// 강의
func printFullName(_ firstName: String, _ lastName: String) {
    print("fullname is \(firstName) \(lastName)")
}

printFullName("Jason", "Lee")

// 3
func printFullNameNoParameter(_ firstName: String, _ lastName: String) -> String {
    return firstName + lastName
}

// 강의
func fullName(firstName: String, lastName: String) -> String {
    return "fullname is \(firstName) \(lastName)"
}

let name = fullName(firstName: "Jason", lastName: "Lee")
print(name)
