# DesignPattern

- 코딩을 잘 짜기 위한 전략
- 초기 마구잡이식 개발 -> 유지&보수 비용 증가 -> 정리와 패턴을 사용해 관리할 필요성 느낌 -> 디자인 패턴의 개발 

- 목표
  - 기술부채 최소화
  - 재사용 및 지속 가능한 코드를 작성
- 클린 아키텍처
- 디자인패턴



> 코드 구조에 대한 전략
>
> 어떤식으로 코드를 구조화시킬까?



## 개념다지기

### MVC

|     Model      | **->** |        Contorller        |      ->      |      View      |
| :------------: | :----: | :----------------------: | :----------: | :------------: |
| 데이터(Struct) | Notify | 중계자(UIViewController) |    Update    | UI요소(UIView) |
|                | **<-** |                          |    **<-**    |                |
|                | Update |                          | User Actions |                |

> 코드를 짜다보니 UIViewController(중계자)가 너무 커짐. 그로인해 기술부채가 생겨남



### MVVM

|     Model      | **->** |     ViewModel     | **->** |               View               |
| :------------: | :----: | :---------------: | :----: | :------------------------------: |
| 데이터(Struct) | Notify | 중계자(ViewModel) | Update | UI요소(UIView, UIViewController) |
|                | **<-** |                   | **<-** |                                  |
|                | Update |                   |  Bind  |                                  |



### 차이점

- UIViewController가 모델에 직접 접근하지 못함
- UIViewController가 MVC에서는 Controller, MVVM은 View



### MVVM 개선점

- 할 일이 많은 UIViewController의 역할을 축소시킴
- 할 일이 적어져서 좀더 할 일이 명확해짐



### 리팩터링

- 기술부채를 줄이고 재사용이 가능하고 유지보수 비용을 줄이는 과정
- 코드수정과정
- 중요 원칙
  - 중복 제거 -> 기술부채줄이기
  - 단일 책임 갖기
  - 10, 200 rule
    - 메소드는 10줄 안에
    - 클래스는 200줄 안에
    - 처음에는 30, 400 rule로 작성



