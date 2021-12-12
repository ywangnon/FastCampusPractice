# 06. 스위프트 Collection

## 01. 콜렉션 소개

- 변수를 담는 통

- 종류

  - Array

  - Dictionary

  - Set

- 추가
  - Closuer



## 02. Array 개념

- 동일한 타입의 자료를 담아야 함
- 순서(인덱스)가 있음
- 컴퓨터는 0에서 시작함
- 순서가 있는 아이템에 사용



## 03. Array 실습 - 1

### 기본

```swift
var evenNumbers: [Int] = [2, 4,6, 8]
```



### 엘리먼트 추가

```swift
evenNumbers.append(10)
evenNumbers += [12, 14, 16]
evenNumbers.append(contentsOf: [18, 20])
```

###  

### 빈 배열인지 확인

```swift
let isEmpty = evenNumbers.isEmpty
```



### 배열의 엘리먼트 갯수

```swift
evenNumbers.count
```



### 배열의 첫번째 엘리먼트

```swift
print(evenNumbers.first)

// 옵셔널 제거
if let firstElement = evenNumbers.first {
    print("first is \(firstElement)")
}
```



### 가장 작은 엘리먼트

```swift
evenNumbers.min()
```



### 가장 큰 엘리먼트

```swift
evenNumbers.max()
```



### 특정 인덱스 엘리먼트 접근

```swift
var firstItem = evenNumbers[0]
var scondItem = evenNumbers[1]
var tenthItem = evenNumbers[9]
```



## 04. Array 실습 - 2

### range타입 사용

```swift
let firstThree = evenNumbers[0...2]
```



### 특정 엘리먼트 유무 확인

```swift
evenNumbers.contains(3)
evenNumbers.contains(4)
```



### 특정 인덱스에 엘리먼트 삽입

```swift
evenNumbers.insert(0, at: 0)
```



### 특정 인덱스 삭제

```swift
evenNumbers.remove(at: 0)
```



### 모두 삭제

```swift
evenNumbers.removeAll()
evenNumbers = []
```



### 특정 인덱스 업데이트

```swift
evenNumbers[0] = -2
evenNumbers[0...2] = [-2, 0, 2]
```



### 인덱스 엘리먼트끼리 교체

```swift
evenNumbers.swapAt(0, 9)
```



### 반복문에 사용

- 엘리먼트가 하나씩 num에 복사된다.

```swift
for num in evenNumbers {
    print(num)
}
```



### 인덱스도 포함한 반복문

```swift
for (index, num) in evenNumbers.enumerated() {
    print("index: \(index), value: \(num)")
}
```



### 특정 인덱스까지를 제외한 값을 보여줌

```swift
// 처음부터 세서 제외된 나머지
let dropFirstArray = evenNumbers.dropFirst(3)

// 뒤에서부터 세서 제외된 나머지
let dropLastArray = evenNumbers.dropLast()

// 처음부터 특정구간까지의 엘리먼트
let dropedFirst = evenNumbers.prefix(3)

// 뒤에서부터 특정구간까지의 엘리먼트
let dropedLast = evenNumbers.suffix(3)

evenNumbers // 실제 배열은 변화 없다.
```



**중요함수**

- isEmpty

- count

- 특정인덱스 엘리먼트 접근

- enumerated



## 05. Dictionary 개념

- Key -> Value 형태
- Key는 유일한 값이어야 함
- 순번이 아닌 키값으로 검색됨
- 많은 사람들의 커피를 들고 갈때, 이름으로 표시해 놓는 것과 같음



|           Array           |       Dictionary        |
| :-----------------------: | :---------------------: |
| 순서기반으로 찾을 때 유리 | 의미단위로 찾을 때 유리 |



## 06. Dictionary 실습

### 기본 표현

```swift
var scoreDic: [String: Int] = ["Jason": 80, "Jay": 95, "Jake": 90]

var scoreDic: Dictionary<String, Int> = ["Jason": 80, "Jay": 95, "Jake": 90]
```



### 사용

```swift
scoreDic["Jason"]  // 80
scoreDic["Jay"]   // 95
scoreDic["Jerry"]  // nil

// 값이 없을 수도 있기 때문에 옵셔널 바인딩으로 가져오면 안정적
if let score = scoreDic["Jason"] {
  score
} else {
  // ... score 없음
}
```





### 빈 값

```swift
scoreDic = [:]
```



### 빈 값 확인

```swift
scoreDic.isEmpty
```



### 갯수 확인

```swift
scoreDic.count
```



### 기존 엘리먼트 업데이트

```swift
// 기존에 있는 값
scoreDic["Jason"] = 99
```



### 추가

```swift
// 기본에 없는 값
scoreDic["Jack"] = 100
```



### 사용자 제거

```swift
scoreDic["Jack"] = nil
```



### for Loop

- 순서가 보장되지 않는다.

```swift
for (name, score) in scoreDic {
  print("\(name), \(score)")
}

// 키 값만
for key in scoreDic.keys {
  print(key)
}
```



## 07. Set 개념과 실습

- 봉지 안에 각각 유일한 것들이 담긴 것
- 중복이 없는 유니크한 엘리먼트 집합



### 정의

- 중복되도 중복이 제거된 채로 저장

```swift
var someArray: Array<Int> = [1, 2, 3, 4]

var someSet: Set<Int> = [1, 2, 3, 1, 2]
```



### nil 체크

```swift
someSet.isEmpty
```



### 갯수

```swift
someSet.count
```



### 엘리먼트 포함 유무

```swift
someSet.contains(4)
someSet.contains(1)
```



### 엘리먼트 추가

```swift
someSet.insert(5)
```



### 삭제

```swift
someSet.remove(1)
```



## 08. Closure 개념과 실습

- 이름이 없는 메소드(함수)
- 함수는 Closure의 한가지 타입
- Closure 종류
  - Global 함수
  - Nested 함수
  - Closure Expressions



|   Function(Global)   |          Closure          |
| :------------------: | :-----------------------: |
|    이름 **있다**.    |      이름 **없다**.       |
| Func 키워드 **필요** | Func 키워드 **필요 없음** |
|  인자 받을 수 있다.  |                           |
|     값 리턴 가능     |                           |
|   변수로 할당 가능   |                           |
|   First Class Type   |                           |



### First Class Type?

- 변수로 할당 가능
- 인자로 받기 가능
- 리턴 가능



## 09. Capturing Values

- 안쪽 스코프(scope)는 바깥쪽 스코프를 접근 가능하지만, 바깥쪽 스코프는 안쪽 스코프에 접근 불가

```swift
{
  // 바깥 scope
  let numOutside = 3
  if true {
    // 안쪽 scope
    let numInside = 5
    print(numOutside, numInside)
  }
  print(numOutside, numInside) // numInside 접근 불가로 오류
}
```



### Closure는?

- 클로저에 캡쳐되면 scope을 벗어나도 사용 가능(capturing Values)

```swift
if true {
  let name = "Jason"
  printClosure = {
    print(name)
  }
}
```



# 11. 스위프트 Closure 실습 - 보강

**형태**

```swift
{ (parameter) -> return type in
	statements
}
```



## Example 1: 매우 Simple Closure

```swift
let choSimpleClosure = {

}

choSimpleClosure()
```



## Example 2: 코드블록을 구현한 Closure

```swift
let choSimpleClosure = {
	print("Hello, 클로저 하이")
}

choSimpleClosure
```



## Example 3: 인풋 파라미터를 받는 Closure

```swift
let choSimpleClosure: (String) -> Void = { name in
	print("Hello, 클로저 하이! 나의 이름은 \(name) 입니다!")
}

choSimpleClosure("코로나가 제일 싫어")
```



## Example 4: 값을 리턴하는 Closure

```swift
let choSimpleClosure: (String) -> String = { name in
  let message = "iOS 개발 만만세, \(name)님 경제적 자유를 얻으실 거예요!"
  return message
}

let result = choSimpleClosure("코로나가 제일 싫어")
print(result)
```



## Example 5: Closure를 파라미터로 받는 함수 구현

```swift
func someSimpleFunction(choSimpleClosure: () -> Void) {
  print("함수에서 호출이 되었어요")
  choSimpleClosure()
}

someSimpleFunction(choSimpleClosure: {
  print("헬로 iOS from closure")
})
```



## Example 6: Trailing Closure

```swift
func someSimpleFunction(message: String, choSimpleClosure: () -> Void) {
  print("함수에서 호출이 되었어요. \(message)")
  choSimpleClosure()
}

someSimpleFunction(message: "로나로나 땅땅", choSimpleClosure: {
  print("헬로 iOS from closure")
})

// Trailing Closure: 마지막 인자가 클로저인 경우 파라미터를 생략하고 입력할 수 있다.
// 코드적으로 인자를 줄여서 가독성을 높임

someSimpleFunction(message: "트레일링 클로저") {
  print("헬로 iOS from closure")
}
```









