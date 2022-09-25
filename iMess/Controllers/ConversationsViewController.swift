//
//  ViewController.swift
//  iMess
//
//  Created by Valentin Rimsha on 24.09.22.
//

import UIKit

class ConversationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .red
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let isLoggedIn = UserDefaults.standard.bool(forKey: "isLoggedIn")
        
       
    }
}

