## 08. Closure 개념과 실습

- 이름이 없는 메소드(함수)
- 함수는 Closure의 한가지 타입
- Closure 종류
  - Global 함수
  - Nested 함수
  - Closure Expressions



|   Function(Global)   |          Closure          |
| :------------------: | :-----------------------: |
|    이름 **있다**.    |      이름 **없다**.       |
| Func 키워드 **필요** | Func 키워드 **필요 없음** |
|  인자 받을 수 있다.  |                           |
|     값 리턴 가능     |                           |
|   변수로 할당 가능   |                           |
|   First Class Type   |                           |



### First Class Type?

- 변수로 할당 가능
- 인자로 받기 가능
- 리턴 가능



## 09. Capturing Values

- 안쪽 스코프(scope)는 바깥쪽 스코프를 접근 가능하지만, 바깥쪽 스코프는 안쪽 스코프에 접근 불가

```swift
{
  // 바깥 scope
  let numOutside = 3
  if true {
    // 안쪽 scope
    let numInside = 5
    print(numOutside, numInside)
  }
  print(numOutside, numInside) // numInside 접근 불가로 오류
}
```



### Closure는?

- 클로저에 캡쳐되면 scope을 벗어나도 사용 가능(capturing Values)

```swift
if true {
  let name = "Jason"
  printClosure = {
    print(name)
  }
}
```





