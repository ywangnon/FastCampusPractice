## 스위프트 Class

- RAM에는 Stack, Heap 두 가지 저장공간이 있음
  - Stack은 자동으로 데이터를 관리하면서 삭제함. 효율적이고 빠름
  - Heap은 크고 Stack보다 느림
  - class를 변수로 할당하면, 변수 주소를 스택에 저장하고 그 주소의 Heap 위치에 클래스의 인스턴스(데이터)가 생성됨



|   Struct    |      Class      |
| :---------: | :-------------: |
| Value Types | Reference Types |
|    Copy     |      Share      |
|    Stack    |      Heap       |
|    Fast     |      Slow       |



## 03. 클래스와 스트럭트 언제 써야 할까?

### Struct를 사용하자!

### 1. 두 object를 "같다, 다르다"로 비교해야 하는 경우

```swift
let point1 = Point(x: 3, y: 5)
let point2 = Point(x: 3, y: 5)
```

- 위 예제와 같이 데이터를 비교해서 같다고 봐야하는 경우 -> **Struct**



### 2. Copy된 각 객체들이 독립적인 상태를 가져야 하는 경우

```swift
var myMac = Mac(owner: "Jason")
var yourMac = myMac
yourMac.owner = "Jay"

myMac.owner
yourMac.owner
```

- 위 예제와 같이 복사했을 때, 각 객체가 다른 상태로 관리되어야하는 경우 -> **Struct**



### 3. 코드에서 오브젝트의 데이터를 여러 스레드에 걸쳐 사용할 경우

- 한 객체에 동시에 여러 스레드가 접근했을 경우, 잠재적인 위험이 있다. 이럴때 value타입을 사용하면 각 인스턴스가 유니크해서 잠재적인 위험을 피할 수 있다.. -> **Struct**



### Class를 사용하자!

### 1. 두 object의 인스턴스 자체가 같음을 확인해야 하는 경우

- 데이터가 아닌 객체 자체가 같은지를 확인할 때 -> **Class**



### 2. 하나의 객체가 필요하고, 여러 대상에 의해 접근되고 변경이 필요한 경우

- UIApplication 객체



## 객체 생성 팁

- 일단 Struct로 생성. 나중에 필요성이 생기면 class로 변경
- https://developer.apple.com/swift/blog/?id=10
- 스택오버플로우 < 공식 문서. 공식문서 먼저보고 스택오버플로우를 보는 습관을 갖자



## 05. 상속의 규칙과 실습

- 자식은 한개의 superclass만 상속 가능
- 부모는 여러 자식들을 가질 수 있음
- 상속의 깊이는 상관이 없음
  - 상속의 깊이: 부모가 자식에게 상속하고, 자식이 부모가 되어서 다시 상속하는 것



> Upcasting / downcasting
>
> 타입캐스트를 자주 사용했지만, 이것들에 대해 정확한 개념은 가지고 있지 못했습니다. 여러 설명을 들어도 부모, 자식 이런 얘기만 있을 뿐이었어요.
>
> 실습을 해보니 명확합니다.
>
> 자식이 부모 타입의 자료가 되려면 부모타입으로 **업캐스트**해야합니다. 그러면 부모쪽이 가지고 있는 데이터에만 접근 가능하게 됩니다.
>
> 이 상태에서 모든 자료를 얻고 싶으면 **다운캐스트**해줍니다. 그러면 모든 자료에 접근 가능합니다.
>
> 이는 업캐스트하더라도 데이터는 모두 가지고 있는 상태에서 부모가 가지고 있는 데이터에만 접근가능하게 만들기 때문입니다.
>
> 이런 이유로 다운캐스트할 때는 문제가 발생할 가능성이 있습니다. 자식이 가지고 있는 데이터를 부모는 가지고 있지 못 할 수 있기 때문입니다. 하지만 업캐스트후 다운캐스트하는 것은 문제가 없습니다.



## 06. 클래스 상속은 언제 쓸까?

### 단일 책임 Single Responsibility

- 각 클래스는 1개의 고려사항만 있으면 된다.
- 골키퍼는 골키퍼, 공격수는 공격수의 역할을 해야하는 것처럼, 클래스는 1개의 역할에 집중 시킨다.
- 이는 다른 오브젝트 생성에도 똑같이 적용됨



### 타입이 분명해야 할때 Type Safety

- 클래스 간에 구분을 명확히 지어줘야할 때
  - 운동부 지원자격이 필요
    - 운동부 클래스를 만들어 따로 관리
- 부모-자식간에 구분을 명확하게 해야할 상황인가



### 다자녀가 있다. shared based Classes

- 기본적인 기능을 가질 수 있을 때
  - 학생: 학습한다.
- 기본동작에 대해서 다양하게 구분해야하는가



### 확장성이 필요한 경우 Extensibility

- 위와 비슷한데, 기능이 확장에 따라 적용시킬때, 구체적인 확장이 가능할 때
  - 학생: 학습한다.
    - 미술부: 그림그리기 학습
    - 체육부: 운동 학습
  - 캔
    - 콜라
    - 사이다
- 확장성이 있는가



### 정체를 파악하기 위해 Identity

- 상속받는 클래스의 identity를 파악가능 할때
  - 학생인데 어떤 학생? -> 미술, 운동



> 이렇게 상속을 해야하나 고민하는 것도 코딩에 도움이 된다. 왜냐하면 코드에 근거가 생기기 때문이다. 이런 장점이 있고, 다른 것과 비교해서 이런 이유가 있다. 라는 이유가 생긴다.



## 07. 생성자

## 클래스 생성시 2단 2-phase Initialization

1. 모든 stored property는 initialize 되어야한다.
   - 자식클래스 프로퍼티 -> 부모클래스 프로퍼티 순으로 초기화한다.
   - phase1이 끝나기전까지 어떤 프로퍼티나 메소드를 사용할 수 없다. 세팅이 안 끝났는데 사용하는 것도 말이 안됨
2. 모든 프로퍼티가 세팅된 후, 프로퍼티와 메소드 사용 가능



```swift
class StudentAthlete: Student {
    var minimumTrainingTime: Int = 2
    var trainedTime: Int = 0
    var sports: [String]
    
    init(firstName: String, lastName: String, sports: [String]) {
        // 자식클래스의 프로퍼티를 먼저 세팅한 후, 부모클래스의 값을 세팅해 줌
        // 규칙: 자식클래스의 프로퍼티를 먼저 세팅하고 부모클래스를 세팅해줌
        // phase 1
        self.sports = sports
        super.init(firstName: firstName, lastName: lastName)
        
        // phase 2
        self.train()
    }
    
  // 간편 이니셜라이저
    convenience init(name: String) {
        self.init(firstName: name, lastName: "", sports: [])
    }
    
    func train() {
        trainedTime += 1
    }
}
```



> 이런 규칙이 없으면 세팅도 안되었는데 호출되고 에러가 일어날 수 있다. 안정적인 프로그래밍을 위해 이런 규칙이 있음



## convenience Initializer 부이니셜라이저

- 상속이 많아지면 생성자가 길어질 수 있다. 그래서 보조적인 생성자로 필요없는 것은 받지 않고 축소하여 간단하게 만드는 것이 가능하다.



### designated vs convenience initializer

- DI 는 자신의 부모의 DI를 호출해야함
- CI 는 같은 클래스의 이니셜라이저를 꼭 하나 호출해야함
- CI 는 궁극적으로는 DI를 호출해야함
