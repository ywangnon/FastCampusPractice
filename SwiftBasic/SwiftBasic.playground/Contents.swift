import UIKit

// 튜플
let coordinates = (4, 6)

let x = coordinates.0
let y = coordinates.1

// 명시적 표현
let coordinatesNamed = (x: 2, y: 3)

let x2 = coordinatesNamed.x
let y2 = coordinatesNamed.y

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

// ---- Scope

var hours = 50
let payPerHour = 10000
var salary = 0

if hours > 40 {
    let extraHour = hours - 40
    salary += extraHour * payPerHour * 2
    hours -= extraHour
}

salary += hours * payPerHour

print(hours)
