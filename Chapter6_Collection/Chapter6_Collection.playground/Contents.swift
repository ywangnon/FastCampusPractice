import UIKit

var evenNumbers: [Int] = [2, 4,6, 8]

// 엘리먼트 추가
evenNumbers.append(10)
evenNumbers += [12, 14, 16]
evenNumbers.append(contentsOf: [18, 20])

// 빈 배열인지 확인
let isEmpty = evenNumbers.isEmpty

// 배열의 엘리먼트 갯수
evenNumbers.count

// 배열의 첫번째 엘리먼트
print(evenNumbers.first)
//let firstItem = evenNumbers.first
if let firstElement = evenNumbers.first {
    print("first is \(firstElement)")
}

// 가장 작은 엘리먼트
evenNumbers.min()
// 가장 큰 엘리먼트
evenNumbers.max()

// 특정 인덱스 엘리먼트 접근
//var firstItem = evenNumbers.first
var firstItem = evenNumbers[0]
var scondItem = evenNumbers[1]
var tenthItem = evenNumbers[9]

//var twentithItem =  evenNumbers[19]

// ----> 심화

// range타입 사용
let firstThree = evenNumbers[0...2]

// 특정 엘리먼트 유무 확인
evenNumbers.contains(3)
evenNumbers.contains(4)

// 특정 인덱스에 엘리먼트 삽입
evenNumbers.insert(0, at: 0)
evenNumbers

// 특정 인덱스 삭제
evenNumbers.remove(at: 0)
evenNumbers

// 모두 삭제
//evenNumbers.removeAll()
//evenNumbers = []
evenNumbers

// 특정 인덱스 업데이트
evenNumbers[0] = -2
evenNumbers

evenNumbers[0...2] = [-2, 0, 2]
evenNumbers

// 교체
//evenNumbers.swapAt(0, 9)

// 반복문에 사용
// 엘리먼트를 하나씩 num에 복사된다.
for num in evenNumbers {
    print(num)
}

// 인덱스도 포함한 반복문
for (index, num) in evenNumbers.enumerated() {
    print("index: \(index), value: \(num)")
}

// 특정 인덱스까지를 제외한 값을 보여줌
// 처음부터 세서 제외된 나머지
let dropFirstArray = evenNumbers.dropFirst(3)
dropFirstArray

// 뒤에서부터 세서 제외된 나머지
let dropLastArray = evenNumbers.dropLast()
dropLastArray

let dropedFirst = evenNumbers.prefix(3)
dropedFirst

let dropedLast = evenNumbers.suffix(3)
dropedLast

evenNumbers // 실제 배열은 변화 없다.
