# 07. Structure

- 이 전까지는 값들을 저장하는 방법을 배움
- 서로 관계가 있는 값들을 한꺼번에 묶어서 관리하거나 표현
- 타입은 스트럭트로 되어 있음



### Object = Data + Method

- Structure
- Class

| Structure  |     Class      |
| :--------: | :------------: |
| Value Type | Reference Type |
|    Copy    |     Share      |
|   Stack    |      Heap      |



```swift
let pClass1 = PersonClass(name: "Jason", age: 5)
let pClass2 = pClass1
pClass2.name = "Hey"
// 1,2 둘 다 바뀜
pClass1.name	// Hey
pClass2.name	// Hey

let pStruct1 = PersonStruct(name: "Jason", age: 5)
let pStruct2 = pStruct1
pStruct2.name = "Hey"
// 2만 바뀜
pStruct1.name	// Jason
pStruct2.name	// Hey
```



## 구조체 실습

```swift
let store1 = (x: 3, y: 5, name: "gs")	// 1

// ---- 구조체 사용

// - make Location struct
struct Location {											// 2
    let x: Int
    let y: Int
}

// - make Store struct
struct Store {												// 3
    let loc: Location
    let name: String
    let deliveryRange = 2.0
    
    func isDeliverable(userLocation: Location) -> Bool {
        let distanceToStore = distance(current: userLocation, target: loc)
        return distanceToStore < deliveryRange
    }
}

let store1 = Store(loc: Location(x: 3, y: 5), name: "gs")	//4
```

- 1은 단순한 정보의 나열
- 2를 통해 Location관련 정보를 묶음
- 3을 통해 Store관련 정보를 묶음
- 코드는 더 길어졌지만, 4는 어떤 정보를 저장하고 있는지 명시적으로 보여줌. 협업이나 코드를 파악하기 쉬워짐
