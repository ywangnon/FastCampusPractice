# 07. Structure

- 이 전까지는 값들을 저장하는 방법을 배움
- 서로 관계가 있는 값들을 한꺼번에 묶어서 관리하거나 표현





### Object = Data + Method

- Structure
- Class

| Structure  |     Class      |
| :--------: | :------------: |
| Value Type | Reference Type |
|    Copy    |     Share      |
|   Stack    |      Heap      |



```swift
let pClass1 = PersonClass(name: "Jason", age: 5)
let pClass2 = pClass1
pClass2.name = "Hey"
// 1,2 둘 다 바뀜
pClass1.name	// Hey
pClass2.name	// Hey

let pStruct1 = PersonStruct(name: "Jason", age: 5)
let pStruct2 = pStruct1
pStruct2.name = "Hey"
// 2만 바뀜
pStruct1.name	// Jason
pStruct2.name	// Hey
```

