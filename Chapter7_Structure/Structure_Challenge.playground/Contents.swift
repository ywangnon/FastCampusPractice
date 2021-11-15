import UIKit

// 도전 과제
// 1. 강의 이름, 강사 이름, 학생수를 가지는 Struct 만들기 (Lecture)
// 2. 강의 어레이이와 강사이름을 받아서 , 해당 강사의 강의 이름을 출력하는 함수 만들기
// 3. 강의 3개 만들고 강사이름으로 강의 찾기

// 1
struct Lecture: CustomStringConvertible {
    var description: String {
        return "Title: \(name), Instructor: \(instructorName)"
    }
    
    let name: String
    let instructorName: String
    let studentsNumber: Int
}

// 2
func printLectureOfInstructor(lectures: [Lecture], name: String) -> String {
    var lectureName = "강의가 없습니다."
    for lec in lectures {
        if lec.instructorName == name {
            lectureName = lec.name
        }
    }
    return lectureName
}

// 강의
func printLectureName(from instructor: String, lectures: [Lecture]) {
//    let lectureName = lectures.first { lec -> Bool in
//        return lec.instructorName == instructor
//    }?.name ?? ""
    let lectureName = lectures.first { $0.instructorName == instructor
    }?.name ?? ""
    
    print("강사님 강의는 \(lectureName)")
}

// 3
let lecture1 = Lecture(name: "수학", instructorName: "김종국", studentsNumber: 13)
let lecture2 = Lecture(name: "국어", instructorName: "이광수", studentsNumber: 8)
let lecture3 = Lecture(name: "영어", instructorName: "유재석", studentsNumber: 21)
let lectures = [lecture1, lecture2, lecture3]

printLectureOfInstructor(lectures: lectures, name: "유재석")
printLectureName(from: "유재석", lectures: lectures)

// 짧은게 좋긴 하지만 협업이나 나중에 볼 시 헷갈릴 수 있다.

print(lecture1)
