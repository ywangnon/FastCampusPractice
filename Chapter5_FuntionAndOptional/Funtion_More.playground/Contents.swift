import UIKit

/**
 오버로드
 
 이름은 같지만 다른 함수
 */
func printTotalPrice(price: Int, count: Int) {
    print("Total Price: \(price * count)")
}

func printTotalPrice(price: Double, count: Double) {
    print("Total Price: \(price * count)")
}

func printTotalPrice(가격: Double, 갯수: Double) {
    print("Total Price: \(가격 * 갯수)")
}

// In-out parameter

// 파라미터는 복사되어 constant로 들어온다. 그렇기때문에 값을 변경할 수 없다.
// 값을 변경해야할 때는 inout으로 처리해준다.

//func incrementAndPrint(_ value: Int) {
//    value += 1
//    print(value)
//}

var value = 3
func incrementAndPrint(_ value: inout Int) {
    value += 1
    print(value)
}

incrementAndPrint(&value)

// ---- Funtion as a param
// 함수를 파라미터로 받을 수 있다.

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

printResult(add, 10, 5)
printResult(subtract, 10, 5)
