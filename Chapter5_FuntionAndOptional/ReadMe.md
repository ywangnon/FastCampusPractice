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

