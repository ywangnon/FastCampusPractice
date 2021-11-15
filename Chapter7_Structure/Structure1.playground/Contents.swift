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

/*
// 현재 스토어 위치들
let store1 = (x: 3, y: 5, name: "gs")
let store2 = (x: 4, y: 6, name: "seven")
let store3 = (x: 1, y: 7, name: "cu")

// 거리구하는 함수

func distance(current: (x: Int, y: Int), target: (x: Int, y: Int)) -> Double {
    // 피타고라스..
    let distanceX = Double(target.x - current.x)    // x길이
    let distanceY = Double(target.y - current.y)    // y길이
    let distance = sqrt(distanceX * distanceX + distanceY * distanceY)  // 제곱근함수(sqrt)
    return distance
}

// 가장 가까운 스토어 구해서 프린트하는 함수

func printClosestStore(currentLocation:(x: Int, y: Int), stores:[(x: Int, y: Int, name: String)]) {
    var closestStoreName = ""
    var closestStoreDistance = Double.infinity

    for store in stores {
        let distanceToStore = distance(current: currentLocation, target: (x: store.x, y: store.y))
        closestStoreDistance = min(distanceToStore, closestStoreDistance)   // 저장된 가장 가까운 거리와 가게와의 거리 비교
        if closestStoreDistance == distanceToStore {                        // 윗라인에서의 비교로 가게가 가장 가까운 거리라면, 가게 이름을 저장
            closestStoreName = store.name
        }
    }
    print("Closest store: \(closestStoreName)")
}

// Stores Array 세팅, 현재 내 위치 세팅
let myLocation = (x: 2, y: 2)
let stores = [store1, store2, store3]

// printClosestStore 함수이용해서 현재 가장 가까운 스토어 출력하기
printClosestStore(currentLocation: myLocation, stores: stores)

*/
 
// Improve Code

// 거리구하는 함수

func distance(current: Location, target: Location) -> Double {
    // 피타고라스..
    let distanceX = Double(target.x - current.x)    // x길이
    let distanceY = Double(target.y - current.y)    // y길이
    let distance = sqrt(distanceX * distanceX + distanceY * distanceY)  // 제곱근함수(sqrt)
    return distance
}

// - make Location struct
struct Location {
    let x: Int
    let y: Int
}

// - make Store struct
struct Store {
    let loc: Location
    let name: String
    let deliveryRange = 2.0
    
    func isDeliverable(userLocation: Location) -> Bool {
        let distanceToStore = distance(current: userLocation, target: loc)
        return distanceToStore < deliveryRange
    }
}

// - make

// 현재 스토어 위치들
let store1 = Store(loc: Location(x: 3, y: 5), name: "gs")
let store2 = Store(loc: Location(x: 4, y: 6), name: "gs")
let store3 = Store(loc: Location(x: 1, y: 7), name: "gs")


// 가장 가까운 스토어 구해서 프린트하는 함수

func printClosestStore(currentLocation:Location, stores:[Store]) {
    var closestStoreName = ""
    var closestStoreDistance = Double.infinity
    var isDeliverable = false

    for store in stores {
        let distanceToStore = distance(current: currentLocation, target: store.loc)
        closestStoreDistance = min(distanceToStore, closestStoreDistance)   // 저장된 가장 가까운 거리와 가게와의 거리 비교
        if closestStoreDistance == distanceToStore {                        // 윗라인에서의 비교로 가게가 가장 가까운 거리라면, 가게 이름을 저장
            closestStoreName = store.name
            isDeliverable = store.isDeliverable(userLocation: currentLocation)
        }
    }
    print("Closest store: \(closestStoreName), isDeliverable: \(isDeliverable)")
}

// Stores Array 세팅, 현재 내 위치 세팅
let myLocation = Location(x: 2, y: 5)
let stores = [store1, store2, store3]

// printClosestStore 함수이용해서 현재 가장 가까운 스토어 출력하기
printClosestStore(currentLocation: myLocation, stores: stores)
