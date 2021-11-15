import UIKit

/*
 { (param) -> return type in
    statement
    ...
 }
 */

// Example 1: 매우 Simple Closure

//let choSimpleClosure = {
//
//}
//
//choSimpleClosure()

// Example 2: 코드블록을 구현한 Closure

//let choSimpleClosure = {
//    print("Hello, 클로저 하이")
//}
//
//choSimpleClosure

// Example 3: 인풋 파라미터를 받는 Closure

//let choSimpleClosure: (String) -> Void = { name in
//    print("Hello, 클로저 하이! 나의 이름은 \(name) 입니다!")
//}
//
//choSimpleClosure("코로나가 제일 싫어")

// Example 4: 값을 리턴하는 Closure

//let choSimpleClosure: (String) -> String = { name in
//    let message = "iOS 개발 만만세, \(name)님 경제적 자유를 얻으실 거예요!"
//    return message
//}
//
//let result = choSimpleClosure("코로나가 제일 싫어")
//print(result)

// Example 5: Closure를 파라미터로 받는 함수 구현

//func someSimpleFunction(choSimpleClosure: () -> Void) {
//    print("함수에서 호출이 되었어요")
//    choSimpleClosure()
//}
//
//someSimpleFunction(choSimpleClosure: {
//    print("헬로 iOS from closure")
//})

// Example 6: Trailing Closure

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
