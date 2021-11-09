import UIKit

var carName: String? = "Tesla"
carName = nil
carName = "탱크"

// 과제
// 1. 여러분이 최애하는 영화배우의 이름을 담는 변수를 작성해주세요.(타입 String?)
// 2. let num = Int("10") -> 타입은 뭘까요?

// 1
// var actor: String? = "마동석"
var favoriteMovieStar: String? = nil

// 2. Int?
let num = Int("10")

// Forced unwrapping
print(carName!)

// Optional binding(if let)
if let unwrappedCarName = carName {
    print(unwrappedCarName)
} else {
    print("Car Name 없다.")
}

// Optional binding(guard)
func printParsedInt(from: String) {
//    if let parsedInt = Int(from) {
//        print(parsedInt)
//    } else {
//        print("Int로 컨버팅 안됨")
//    }
    
    guard let parsedInt = Int(from) else {
        return
    }
    
    print(parsedInt)
}

printParsedInt(from: "100")
printParsedInt(from: "헬로우 마이네임 이즈")

// Nil coalescing
let myCarName: String = carName ?? "모델 S"

// 도전과제
// 1. 최애 음식이름을 담는 변수를 작성하시고 (String?),
// 2. 옵셔널바인딩을 이용해서 값을 확인해보기
// 3. 닉네임을 받아서 출력하는 함수 만들기, 조건 입력 파라미터는 String?

// 1
var favoriteFood: String? = "피자"

// 2
print(favoriteFood!)

if let food = favoriteFood {
    print(food)
} else {
    print("food is not")
}

func printFavoriteFood(_ food: String?) {
    guard let food = favoriteFood else {
        print("no food")
        return
    }
    print(food)
}

let food = favoriteFood ?? "치킨"

// 3
func printNickName(_ name: String?) {
    guard let name = name else {
        print("이름 만들자")
        return
    }
    print("name is " + name)
}

printNickName("하이하이")
printNickName(nil)
