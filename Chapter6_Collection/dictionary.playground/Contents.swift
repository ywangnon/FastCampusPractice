import UIKit

// 표현 방법
//var scoreDic: [String: Int] = ["Jason": 80, "Jay": 95, "Jake": 90]
var scoreDic: Dictionary<String, Int> = ["Jason": 80, "Jay": 95, "Jake": 90]
 
scoreDic["Jason"]   // 80
scoreDic["Jay"]     // 95

scoreDic["Jerry"]   // nil

// 값이 없을 수도 있기 때문에 옵셔널 바인딩으로 가져오면 안정적
if let score = scoreDic["Jason"] {
    score
} else {
    // ... score 없음
}

//scoreDic = [:]
scoreDic.isEmpty

scoreDic.count

// 기존 엘리먼트 업데이트
scoreDic["Jason"] = 99
scoreDic

// 엘리먼트 추가
scoreDic["Jack"] = 100
scoreDic

// 사용자 제거
scoreDic["Jack"] = nil
scoreDic

// Loop
// 순서가 보장되지 않는다.
for (name, score) in scoreDic {
    print("\(name), \(score)")
}

for key in scoreDic.keys {
    print(key)
}

// 도전과제
// 1. 이름, 직업, 도시에 대해서 본인의 딕셔너리 만들기
// 2. 여기서 도시를 부산으로 업데이트 하기
// 3. 딕셔너리를 받아서 이름과 도시 프린트하는 함수 만들기

// 1
var myInfo = ["name": "MyName", "job": "Developer", "city":"seoul"]
// --> 강좌
var myDic: [String: String] = ["name": "Jason", "job": "iOS Engineer", "city": "Seoul"]

// 2
myInfo["city"] = "busan"
// --> 강좌
myDic["city"] = "Busan"
myDic


// 3
func printNameAndCity(dic: [String: String]) {
    guard let city = dic["city"] else { return }
    guard let name = dic["name"] else { return }
    
    print("name: " + name + ", city: " + city)
}

// --> 강좌
func printNameCity(dic: [String: String]) {
    if let name = dic["name"], let city = dic["city"] {
         print(name, city)
    } else {
        print("can't find city")
    }
}

printNameCity(dic: myDic)
