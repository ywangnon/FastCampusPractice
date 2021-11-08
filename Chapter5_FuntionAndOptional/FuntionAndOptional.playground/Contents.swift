import UIKit

func printName() {
    print("My name is Jason")
}

printName()

// parameter 1개
// 숫자를 받아서 10을 곱해서 출력하는 함수

func printMultipleOfTen(value: Int) {
    print("\(value) * 10 = \(value * 10)")
}

printMultipleOfTen(value: 5)

// parameter 2개
// 물건값과 갯수를 받아서 전체 금액을 출력하는 함수

func printTotalPrice(가격 price: Int, 갯수 count: Int) {
    print("Total Price: \(price * count)")
}

//printTotalPrice(price: 1500, count: 5)
//printTotalPrice(1500, 5)
printTotalPrice(가격: 1500, 갯수: 5)

printTotalPrice(가격: 1500, 갯수: 5)
printTotalPrice(가격: 1500, 갯수: 10)
printTotalPrice(가격: 1500, 갯수: 6)
printTotalPrice(가격: 1500, 갯수: 1)
// -> 이런 경우 가격이 같기에 기본 값이 있다고 볼 수 있다.

func printTotalPricewithDefaultValue(price: Int = 1500, count: Int) {
    print("Total Price: \(price * count)")
}

printTotalPricewithDefaultValue(count: 5)
printTotalPricewithDefaultValue(count: 10)
printTotalPricewithDefaultValue(count: 6)
printTotalPricewithDefaultValue(count: 1)

printTotalPricewithDefaultValue(price: 2000, count: 1)

func totalPrice(price: Int, count: Int) -> Int {
    let totalPrice = price * count
    return totalPrice
}

let calculatedprice = totalPrice(price: 10000, count: 77)
print(calculatedprice)
