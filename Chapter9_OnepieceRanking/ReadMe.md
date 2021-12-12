# 원피스 현상금 추천 앱

## 01. 아이폰 개발자가 알면 좋은 경제지식

- 스마트폰에서 아이폰 비율은 낮지만 매출은 안드로이드보다 더 높다. -> 결제율이 높다.



## 02. 테이블뷰 기초 개념

- 테이블뷰는 테이블뷰셀을 이용해서 데이터를 표현
- 테이블뷰셀은 실제로 보여주는 부분만 구현되고 스크롤하면 재사용되어서 사용됨



## 03. 테이블퓨 프로토콜 개념

### 테이블뷰 사용하는 이유

- 여러 아이템을 리스트 형태로 보여주고 싶을때 사용



### 테이블뷰 사용시 테이블뷰가 하는 질문?

- **테이블뷰 셀 몇개?**
- **테이블뷰 어떻게 보여줄까? 어떤 셀을 사용해서 보여줘?**
- 테이블뷰 클릭하면 어떡해?
- ...

> 셀 갯수와 어떻게 보여줄지는 반드시 답해줘야 함



### 어떤 서비스를 이용하기 위해서 해야할 일?

- 프로토콜을 사용!

**UITableViewDataSource** -> 테이블뷰 셀 몇 개?, 테이블뷰 어떻게 보여줄까?

**UITableViewDelegate** -> 테이블뷰 클릭하면 어떻게 할까?



## 05. 커스텀 테이블뷰셀 만들기

- 많은 회사들은 자기들만의 셀을 만들어 사용하고 있음



## 06. 뷰컨트롤러 모달로 띄우기

```swift
    // UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("--> \(indexPath.row)")
      // 1
        performSegue(withIdentifier: "showDetail", sender: indexPath.row)
    }
```

- 1: 스토리보드에서 show Modaly로 segue 연결 후, performSegue 함수로 실행

## 07. 데이터 넘기기

```swift
    // segue하기 전에 미리 실행되어 준비하는 함수
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // DetailViewController 데이터 줄꺼예요
        print("prepare segue")
      // 1
        if segue.identifier == "showDetail" {
          // 2
            let vc = segue.destination as? DetailViewController
            
            if let index = sender as? Int {
                let bountyInfo = viewModel.bountyInfo(at: index)
              // 3
                vc?.viewModel.update(model: bountyInfo)
            }
        }
    }
```

- 1: 세그 중 showDetail 로 명명된 세그 확인
- 2: 세그 목적지를 DetailViewController 로 설정
- 3: 목적지의 함수 중 update 실행

## 08. 코드 회고

- 이세돌도 회고를 통해 패인을 분석하고, 이긴 이유는 무엇인가 파악
- 스스로에 대한 배움, 성장



### 코드 리뷰

- 왜 이렇게 작성했는지? 이렇게 작성해서 나중에 문제가 생기지 않는지?
- 동료에게 코드를 보여주다보면 자기 스스로 자가 리뷰를 하게 됨



> 기술부채가 쌓이지 않도록 전략적으로 코딩을 짜야한다. -> 디자인패턴

