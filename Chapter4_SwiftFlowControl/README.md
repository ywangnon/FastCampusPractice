#Flow Control

- 조건에 따라 필요없는 부분을 건너뛰거나 반복시키는 것



## while

- 조건에 만족하는 동안에는 계속 반복



### 기본형

```swift
while 조건 {
  code...
}
```

- 조건 > 코드수행 > 조건 > 코드수행...



### repeat while

```swift
repeat {
  code...
} while 조건
```

- 코드수행 > 조건 > 코드수행 > 조건



## For Loop

- 정해진 범위를 반복



### 기본형

```swift
for 변수 in 범위 {
  code...
}
```



### 조건

```swift
for 변수 in 범위 where 조건 {
  code...
}
```



### 사용하지 않는 변수

```swift
for _ in 범위 {
  code...
}
```

- 반복문의 변수가 사용되지 않을 시, 언더바(_)로 대체할 수 있다.



### 반복문 넘기기

```swift
for i in 0...5 {
  if i == 3 {
    continue
  }
}
```

- continue를 만나면 밑의 코드는 무시하고 다음 반복으로 넘어감



### 중첩

```swift
for i in 1...9 {
  for j in 1...9 {
    print("구구단 --> \(i) * \(j) = \(i * j)")
  }
}
```

- 중첩 반복문은 가독성과 성능을 떨어뜨린다.



## switch

- 케이스별로 처리방법 정의
- 모든 케이스에 대해 처리방법을 정해줘야 함



### 기본형

```swift
let num = 10

switch num {
  case 0:
  	print("0입니다.")
  case 0...10:
  	print("0 10 사이입니다.")
  case 10:
  	print("10입니다.")
  default:
}
```



### 연속으로 있는 조건

```swift
let pet = "bird"

switch pet {
  case "dog", "cat", "bird":
  	print("집동물이네요?")
  default:
  	print("잘 모르겠습니다.")
}
```



### 조건이 있는 switch

```swift
let num = 5
switch num {
  case _ where num % 2 == 0:
  	print("짝수")
  default:
  	print("홀수")
}
```



## 튜플

- 관계가 있는 데이터끼리 묶어서 표현한 것



```swift
let coordinate = (x: 0, y: 10)

switch coordinate {
  case (0, 0):
  	print("원점입니다.")
  case (_, 0):
  	print("x축이네요")
  case (0, _):
  	print("y축이네요")
  default:
  	print("좌표 어딘가...")
}
```



### 튜플 값 받기

```swift
let coordinate = (x: 0, y: 10)

switch coordinate {
  case (0, 0):
  	print("원점입니다.")
  case (let x, 0):
  	print("x축이네요. x: \(x)")
  case (0, let y):
  	print("y축이네요". y: \(y))
  case (let x, let y) where x == y"
  	print("x와 y의 값이 같음 x,y = \(x),\(y)")
  case (let x, let y):
  	print("좌표 어딘가... x,y = \(x),\(y)")
}
```



