//
//  BountyViewController.swift
//  BountyList
//
//  Created by Hansub Yoo on 2021/11/20.
//

import UIKit

class BountyViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // MVVM
    
    // Model
    // 데이터(이름, 현상금) -> 하나의 오브젝트로
    // - BountyInfo
    
    // View
    // 셀을 통해 현상금 정보를 보여주고 있음
    // - ListCell
    // > ListCell에 필요한 정보를 ViewModle한테서 받아야겠다.
    // > ListCell은 ViewModel로부터 받은 정보로 뷰 업데이트 하기
    
    // ViewModel
    // - BountyViewModel
    // > BountyViewModel을 만들고, 뷰레이어에서 필요한 메서드 만들기
    // > 모델(BountyInfo들)을 가지고 있기
    
//    let bountyInfoList: [BountyInfo] = [
//        BountyInfo(name: "brook", bounty: 33000000),
//        BountyInfo(name: "chopper", bounty: 50),
//        BountyInfo(name: "franky", bounty: 44000000),
//        BountyInfo(name: "luffy", bounty: 300000000),
//        BountyInfo(name: "nami", bounty: 16000000),
//        BountyInfo(name: "robin", bounty: 80000000),
//        BountyInfo(name: "sanji", bounty: 77000000),
//        BountyInfo(name: "zoro", bounty: 120000000)
//    ]
    
    let viewModel = BountyViewModel()
    
//    let nameList = ["brook", "chopper", "franky", "luffy", "nami", "robin", "sanji", "zoro"]
//    let bountyList = [33000000, 50, 44000000, 300000000, 16000000, 80000000, 77000000, 120000000]
    // 이름과 현상금이 다른 배열이기 때문에 수정에 많은 애로사항이 있다.(순서만 같을 뿐 연관이 없다.)
    
    // segue하기 전에 미리 실행되어 준비하는 함수
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // DetailViewController 데이터 줄꺼예요
        print("prepare segue")
        if segue.identifier == "showDetail" {
            let vc = segue.destination as? DetailViewController
            
            if let index = sender as? Int {
//                vc?.name = nameList[index]
//                vc?.bounty = bountyList[index]
                
//                let bountyInfo = bountyInfoList[index]
////                vc?.name = bountyInfo.name
////                vc?.bounty = bountyInfo.bounty
//                vc?.bountyInfo = bountyInfo
                
                let bountyInfo = viewModel.bountyInfo(at: index)
//                vc?.bountyInfo = bountyInfo
                vc?.viewModel.update(model: bountyInfo)
                
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return bountyList.count
        
//        return bountyInfoList.count
        
        return viewModel.numOfBountyInfoList
    }
    
    // UITableViewDataSource
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell else {
            return UITableViewCell()
        }
        
//        let img = UIImage(named: "\(nameList[indexPath.row])")
//        cell.imgView.image = img
//        cell.nameLabel.text = nameList[indexPath.row]
//        cell.bountyLabel.text = "\(bountyList[indexPath.row])"
        
//        let bountyInfo = bountyInfoList[indexPath.row]
//        cell.imgView.image = bountyInfo.image
//        cell.nameLabel.text = bountyInfo.name
//        cell.bountyLabel.text = "\(bountyInfo.bounty)"
        
        let bountyInfo = viewModel.bountyInfo(at: indexPath.row)
//        cell.imgView.image = bountyInfo.image
//        cell.nameLabel.text = bountyInfo.name
//        cell.bountyLabel.text = "\(bountyInfo.bounty)"
        cell.update(model: bountyInfo)

        return cell
        
//        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell {
//            let img = UIImage(named: "\(nameList[indexPath.row])")
//            cell.imgView.image = img
//            cell.nameLabel.text = nameList[indexPath.row]
//            cell.bountyLabel.text = "\(bountyList[indexPath.row])"
//            return cell
//        } else {
//            return UITableViewCell()
//        }
    }
    
    // UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("--> \(indexPath.row)")
        performSegue(withIdentifier: "showDetail", sender: indexPath.row)
    }
}

// custom cell

class ListCell: UITableViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
    
    func update(model: BountyInfo) {
        imgView.image = model.image
        nameLabel.text = model.name
        bountyLabel.text = "\(model.bounty)"
    }
}

// MVVM - Model
//struct BountyInfo {
//    let name: String
//    let bounty: Int
//    
//    var image: UIImage? {
//        return UIImage(named: "\(name).jpg")
//    }
//    
//    init(name: String, bounty: Int) {
//        self.name = name
//        self.bounty = bounty
//    }
//}

// MVVM - ViewModel

class BountyViewModel {
    let bountyInfoList: [BountyInfo] = [
        BountyInfo(name: "brook", bounty: 33000000),
        BountyInfo(name: "chopper", bounty: 50),
        BountyInfo(name: "franky", bounty: 44000000),
        BountyInfo(name: "luffy", bounty: 300000000),
        BountyInfo(name: "nami", bounty: 16000000),
        BountyInfo(name: "robin", bounty: 80000000),
        BountyInfo(name: "sanji", bounty: 77000000),
        BountyInfo(name: "zoro", bounty: 120000000)
    ]
    
    var sortedList: [BountyInfo] {
        return bountyInfoList.sorted { prev, next in
            return prev.bounty > next.bounty
        }
    }
    
    var numOfBountyInfoList: Int {
        return bountyInfoList.count
    }
    
    func bountyInfo(at index: Int) -> BountyInfo {
//        return bountyInfoList[index]
        return sortedList[index]
    }
}
