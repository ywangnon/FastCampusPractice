import UIKit

// 정의
// 중복되도 중복이 제거된 채로 저장
var someArray: Array<Int> = [1, 2, 3, 4]
var someSet: Set<Int> = [1, 2, 3, 1, 2]

someSet.isEmpty
someSet.count

someSet.contains(4)
someSet.contains(1)

// 삽입
someSet.insert(5)
someSet

someSet.remove(1)
someSet
