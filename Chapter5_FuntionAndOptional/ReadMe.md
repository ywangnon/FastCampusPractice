# 스위프트 Function and Optional



##  01. 함수 소개



- 함수(Funtion): 기능을 수행하는 코드. 독립적으로 호출 가능
- 메소드(Method): 오브젝트(클래스, 구조체, 열거형)에 속해서 기능을 수행.



```swift
object.methodName() // Method
functionName() // Funtion
// print같은 함수도 따로 쓰는 것이 아니라 이 자체로 사용 가능한 Funtion
```



## 02. 함수 실습 - 1

### 함수 기본형

```swift
// 정의
func printName() {
    print("My name is Jason")
}

// 사용
printName()
```





### 파라미터가 있는 함수

```swift
// 정의
func printMultipleOfTen(value: Int) {
    print("\(value) * 10 = \(value * 10)")
}

// 사용
printMultipleOfTen(value: 5)
```



### 다수의 파라미터가 있는 함수

```swift
// 정의
func printTotalPrice(price: Int, count: Int) {
    print("Total Price: \(price * count)")
}

// 사용
printTotalPrice(price: 1500, count: 5)
```



### 파라미터명 안보이게

```swift
// 정의
func printTotalPrice(_ price: Int, _ count: Int) {
    print("Total Price: \(price * count)")
}

// 사용
printTotalPrice(1500, 5)
```



### 외부와 내부 파라미터 다르게

```swift
// 정의
func printTotalPrice(가격 price: Int, 갯수 count: Int) {
    print("Total Price: \(price * count)")
}

// 사용
printTotalPrice(가격: 1500, 갯수: 5)
```



## 03. 함수 실습 - 2

### 디폴트 값이 있는 함수

```swift
// 정의
func printTotalPricewithDefaultValue(price: Int = 1500, count: Int) {
    print("Total Price: \(price * count)")
}

// 사용
printTotalPricewithDefaultValue(count: 5)
// 값이 기본값과 다를때
printTotalPricewithDefaultValue(price: 2000, count: 1)
```



### 반환값이 있는 함수

```swift
// 정의
func totalPrice(price: Int, count: Int) -> Int {
    let totalPrice = price * count
    return totalPrice
}

// 사용
// 값을 따로 정의하여 사용할 수 있다.
let calculatedprice = totalPrice(price: 10000, count: 77)
```



## 04. 함수 요약

- 자판기와 같다.
- 값(동전)을 받고 리턴값(음료수)를 준다.



## 06. 고급기능 - 1

### 오버로드

- 이름은 같은 다른 함수

```swift
func printTotalPrice(price: Int, count: Int) {
    print("Total Price: \(price * count)")
}

func printTotalPrice(price: Double, count: Double) {
    print("Total Price: \(price * count)")
}

func printTotalPrice(가격: Double, 갯수: Double) {
    print("Total Price: \(가격 * 갯수)")
}
```



### In-out

- 파라미터는 복사되어 constant로 들어온다. 그렇기때문에 값을 변경할 수 없다. 
- 값을 변경해야할 때는 inout으로 처리해준다.

```swift
//func incrementAndPrint(_ value: Int) {
//    value += 1
//    print(value)
//}
// 에러

var value = 3
func incrementAndPrint(_ value: inout Int) {
    value += 1
    print(value)
}

// 사용
incrementAndPrint(&value)
```





## 07. 고급기능 - 2

- 함수를 파라미터로 받을 수 있다.

```swift
func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func subtract(_ a: Int, _ b: Int) -> Int {
    return a - b
}

var function = add
function(4, 2)
function = subtract
function(4, 2)
func printResult(_ function: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    let result = function(a, b)
    print(result)
}

printResult(add, 10, 5) // 15
printResult(subtract, 10, 5) // 5
```





## 08. 옵셔널 기초

- 값이 없을 수도 있는 것을 표현
- **Nil**: 값이 없음



## 09. 옵셔널 기초 실습

```swift
var carName: String? = "Tesla"
carName = nil
carName = "탱크"
```





## 10. 옵셔널 고급 - 1

- Forced unwrapping > 억지로 박스를 까보기
- Optional binding(if let) > 부드럽게 박스를 까보자 1
- Optional binding(guard) > 부드럽게 박스를 까보자 2
- Nil coalescing > 박스를 까서 값이 없으면, 디폴트 값을 줘보자



### Forced unwrapping

- !를 사용해서 강제로 값을 가져올 수 있음
- 값이 없는 경우 에러남

```swift
var carName: String? = "Tesla"
print(carName!)

carName = nil
// print(carName!) 에러
```



### Optional binding(if let)

- 값이 있으면 값을 정의하고, 없으면 else문을 처리함

```swift
if let unwrappedCarName = carName {
    print(unwrappedCarName)
} else {
    print("Car Name 없다.")
}
```



### Optional binding(guard)

- if 문만으로는 Cyclomatic complexity가 높아질 수 있음
- 초기에 원하는 값이 아닌 것들을 제거하기 위해 사용

```swift
func printParsedInt(from: String) {
    guard let parsedInt = Int(from) else {
        return
    }
    
    print(parsedInt)
}
```



### Nil coalescing

- 정의하는 값이 nil이면 기본값을 줌

```swift
carName = nil
let myCarName: String = carName ?? "모델 S"
```

