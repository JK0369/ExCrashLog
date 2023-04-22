//
//  ViewController.swift
//  ExCrashLog
//
//  Created by 김종권 on 2023/04/22.
//

import UIKit
import FirebaseCrashlytics

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton(type: .roundedRect)
        button.frame = CGRect(x: 20, y: 50, width: 100, height: 30)
        button.setTitle("Crash", for: [])
        button.addTarget(self, action: #selector(crashButtonTapped(_:)), for: .touchUpInside)
        view.addSubview(button)
    }

    @IBAction func crashButtonTapped(_ sender: AnyObject) {
        let ind1 = 0
        let ind2 = 1
        
        // arguments 타입
        Crashlytics.crashlytics().log(format: "index1: %@, index2: %@", arguments: getVaList([ind1, ind2].map(String.init)))
        
        let numbers = [0]
        let _ = numbers[1]
    }

}

