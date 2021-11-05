//
//  ViewController.swift
//  MyAlbum
//
//  Created by Hansub Yoo on 2021/11/02.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue = 0
    
    @IBOutlet weak var priceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refresh()
    }

    @IBAction func hello(_ sender: Any) {
        let message = "실습프로젝트 가격은 \(currentValue)입니다."
        
        let alert = UIAlertController(title: "Hello", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: { action in
            self.refresh()
        })
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
        
//        refresh()
    }
    
    func refresh() {
        let randomPrice = arc4random_uniform(10000) + 1
        currentValue = Int(randomPrice)
        self.priceLabel.text = "₩ \(currentValue)"
    }
}

