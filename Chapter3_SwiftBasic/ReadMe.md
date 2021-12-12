1. 스위프트 기초





2. 플레이그라운드

xcode에서 스위프트를 이용해서 놀 수 있는 놀이터



3. 코멘트

Command + / : 코멘트 단축키(한줄)

/*

 내용

 */ : 여러줄 코멘트 

**화난다고 코멘트에 이상한 글 적지 않기**



4. 튜플

동시에 여러개의 데이터를 할 때  사용. Ex ) 좌표 표현



```swift
// 튜플
let coordinates = (4, 6)

let x = coordinates.0
let y = coordinates.1

// 명시적 표현
let coordinatesNamed = (x: 2, y: 3)

let x2 = coordinatesNamed.x
let y2 = coordinatesNamed.y

```



5. Boolean

- True / False 두 가지 상태를 가지고 있음



```swift
// Boolean
let yes = true
let no = false

// 비교연산자
let isFourGreaterThanFive = 4 > 5

// boolean은 코드 흐름 제어에 자주 상요됨
if isFourGreaterThanFive {
  print("참")
} else {
  print("거짓")
}

let a = 5
let b = 10

if a > b {
  print("a가 더 큼")
} else {
  print("b가 더 큼")
}

let name1 = "Jin"
let name2 = "Jason"

let isTwoNameSame = name1 == name2

if isTwoNameSame {
  print("이름 같음")
} else {
  print("이름 다름")
}
```



6. Boolean 추가개념

**논리연산자**

- &&(and): 둘 다 참이어야 **참**

- ||(or): 둘 중 하마만 참이어도 **참**

**삼항연산자**

- 간단한 if문은 삼항연산자로 표현 가능



```swift
let isJason = name2 == "Jason"
let isMale = true

// 논리연산자
let jasonAndMale = isJason && isMale
let jasonOrMale = isJason || isMale

// 삼항연산자
// isJson이 참이면 Hello Jason, 거짓이면 Hello Somebody
let greetingMessage: String = isJaon ? "Hello Jason" : "Hello Somebody"
```



7. Scope

{...Scope...}

- 블록 안에서 설정된 변수는 블록 안에서 그 사용성이 끝남

