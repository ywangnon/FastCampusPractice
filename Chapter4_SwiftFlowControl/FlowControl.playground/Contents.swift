import UIKit
import Foundation

// ---- while
// 조건을 충족하면 반복

//while 조건 {
//    code....
//}

var i = 10
// 조건을 검사하고 작업 수행
while i < 10 {
    print(i)
    
    if i == 5 {
        break
    }
    
    i += 1
}
print("탈출 i = ", i)

// repeat

i = 10
// 작업을 수행해고 조건 검사
repeat {
    print(i)
    i += 1
} while i < 10

print("탈출 i = ", i)

/**
 while
 조건 > 코드수행 > 조건 > 코드수행
 
 repeat while
 코드수행 > 조건 > 코드수행 > 조건
 */

// ---- for Loop

let closedRange = 0...10
let halfClosedRange = 0..<10

var sum = 0
for i in closedRange {
    print("---> \(i)")
    sum += i
}

print("---> total sum: \(sum)")

sum = 0
for i in halfClosedRange {
    print("---> \(i)")
    sum += i
}

print("---> total sum: \(sum)") // closedRange보다 10이 적다.

var sinValue: CGFloat = 0
for i in closedRange {
    sinValue = sin(CGFloat.pi/4 * CGFloat(i))
}

let name = "Jason"
// 쓰이지 않는 값은 _로 대체 가능
for _ in closedRange {
    print("--> name: \(name)")
}

for i in closedRange {
    if i % 2 == 0 {
        print("--> 짝수: \(i)")
    }
}

// 조건을 가진 for loop
for i in closedRange where i % 2 == 0 {
    print(i)
}

// 보기 쉬운 것으로 작성하면 된다.

// 숫자 3일때는 건너뜀
for i in closedRange {
    if i == 3 {
        // 밑에 코드들은 건너뛰고 다음 반복문을 실행한다.
        continue
    }
    
    print("---> \(i)")
}

for i in closedRange {
    for j in closedRange {
        print("구구단 -> \(i) * \(j) = \(i * j)")
    }
}

// 중첩이 많아지면 읽기도 나빠지고 성능적으로 좋진 않다.

// --- switch

let num = 10

switch num {
case 0:
    print("0입니다.")
case 10:
    print("10입니다.")
default:
    print("나머지 입니다.")
}
