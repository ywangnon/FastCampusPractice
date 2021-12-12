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



## 04. Protocol

- 규약
- 해야할 일들의 목록



## 05. 프로퍼티 개념

- 데이터 = 프로퍼티
- 종류
  - Stored Property: 저장된 프로퍼티. 어떤 값을 변수로 가진 프로퍼티(인스턴스 프로퍼티)
  - Computed Property: 저장하지 않음. 저장된 정보를 이용해서 가공, 계산된 값 제공. 접근할 때마다 계산해서 값 제공. var 키워드만 가능.(인스턴스 프로퍼티)
  - Type Property: 생성된 인스턴스에 상관없이 오브젝트 자체의 속성을 정하고 싶을 때 사용

```swift
struct Lecture: CustomStringConvertible {
  // stored property
    let name: String
    let instructorName: String
    let studentsNumber: Int
  // computed property
    var description: String {
        return "Title: \(name), Instructor: \(instructorName)"
    }
  // type property
  	static let isOpen: Bool = false
}
```



## 06. 프로퍼티 실습

- 값이 바뀌는 것을 감지
  - didSet: Stored Property에서만 가능. 값이 세팅 된 직후
  - willSet: Stored Property에서만 가능. 값이 세팅되기 직전

- lazy: 실제 값에 접근할 때 생성. 코스트를 줄이고, 최적화를 하기 위해 사용.



## 08. 프로퍼티 vs 메소드

- Property: 저장된 값 호출
- Method: 정해진 작업 작동

> computed property와 메소드의 작업이 같은 때는 고민해봐야함
>
> 강의에서는 setter가 필요없고, 계산이 많이 필요하면 Method, 나머지 (setter o) / (setter x, 계산 x)  는 computed property로 정했다.



## 09. 실습

- **static**: 메소드, 프로퍼티 둘 다 타입메소드, 타입프로퍼티 가능

- **mutating**: 값타입(struct)은 인스턴스내에서 프로퍼티를 변형시키는 함수 사용시 muating 키워드 사용





## 10. 메소드 확장

- extension을 이용해 기존 오브젝트에서 추가적으로 코드를 작성 가능
