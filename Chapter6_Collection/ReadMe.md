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



### 03. Array 실습 - 1

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



### 04. Array 실습 - 2

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

