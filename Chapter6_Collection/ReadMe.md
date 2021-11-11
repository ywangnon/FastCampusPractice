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







