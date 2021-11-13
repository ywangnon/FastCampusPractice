import UIKit

class PersonClass {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

struct PersonStruct {
    var name: String
    var age: Int
}

let pClass1 = PersonClass(name: "Jason", age: 5)
let pClass2 = pClass1
pClass2.name = "Hey"
// 1,2 둘 다 바뀜
pClass1.name    // Hey
pClass2.name    // Hey

var pStruct1 = PersonStruct(name: "Jason", age: 5)
var pStruct2 = pStruct1
pStruct2.name = "Hey"
// 2만 바뀜
pStruct1.name    // Jason
pStruct2.name    // Hey

















// 문제: 가장 가까운 편의점 찾기

// 맨처음 시작시 코드...

// 현재 스토어 위치들
let store1 = (x: 3, y: 5, name: "gs")
let store2 = (x: 3, y: 5, name: "gs")
let store3 = (x: 3, y: 5, name: "gs")

// 거리구하는 함수

// 가장 가까운 스토어 구해서 프린트하는 함수

// Stores Array 세팅, 현재 내 위치 세팅

// printClosestStore 함수이용해서 현재 가장 가까운 스토어 출력하기

// Improve Code
// - make Location struct
// - make
