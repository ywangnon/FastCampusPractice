//
//  BountyViewController.swift
//  BountyList
//
//  Created by Hansub Yoo on 2021/11/20.
//

import UIKit

class BountyViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
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
    
    let viewModel = BountyViewModel()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare segue")
        if segue.identifier == "showDetail" {
            let vc = segue.destination as? DetailViewController
            
            if let index = sender as? Int {
                let bountyInfo = viewModel.bountyInfo(at: index)
                vc?.viewModel.update(model: bountyInfo)
                
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numOfBountyInfoList
    }
    
    // UICollectionViewDataSource
    // 몇개를 보여줄까요?
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.numOfBountyInfoList
    }
    
    // 셀은 어떻게 표현할까요?
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GridCell", for: indexPath) as? GridCell else {
            return UICollectionViewCell()
        }
        
        let bountyInfo = viewModel.bountyInfo(at: indexPath.item)
        cell.update(model: bountyInfo)
        return cell
    }
    
    // UICollectionViewDelegate
    // 셀이 클릭되었을때 어쩔까요?
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("--> \(indexPath.row)")
        performSegue(withIdentifier: "showDetail", sender: indexPath.item)
    }
    
    // UICollectionViewDelegateFlowLayout
    // cell size를 계산할거다 (목표: 다양한 디바이스에서 일관적인 디자인을 보여주기위해서)
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemSpacing: CGFloat = 10
        let textAreaHeight: CGFloat = 65
        
        let width: CGFloat = (collectionView.bounds.width - itemSpacing)/2
        let height: CGFloat = width * 10/7 + textAreaHeight
        return CGSize(width: width, height: height)
        
    }
}

// custom cell

class GridCell: UICollectionViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
    
    func update(model: BountyInfo) {
        imgView.image = model.image
        nameLabel.text = model.name
        bountyLabel.text = "\(model.bounty)"
    }
}

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
        return sortedList[index]
    }
}
