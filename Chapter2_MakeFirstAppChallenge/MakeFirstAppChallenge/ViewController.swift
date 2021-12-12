//
//  ViewController.swift
//  MakeFirstAppChallenge
//
//  Created by Hansub Yoo on 2021/11/04.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func challengeButtonAction(_ sender: Any) {
        let alert = UIAlertController(title: "도전과제",
                                      message: "제출합니다.",
                                      preferredStyle: .alert)
        let action = UIAlertAction(title: "OK",
                                   style: .default,
                                   handler: nil)
        alert.addAction(action)
        self.present(alert,
                     animated: true,
                     completion: nil)
    }
    
}

