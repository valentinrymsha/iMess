//
//  LoginViewController.swift
//  iMess
//
//  Created by Valentin Rimsha on 24.09.22.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: Outlets
    
    @IBOutlet private weak var loginLabel: UILabel!
    @IBOutlet private weak var loginTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    @IBOutlet private weak var forgetPassButton: UIButton!
    @IBOutlet private weak var submitButton: UIButton!
    
    // MARK: Properties
    
    private func setupViews(){
        loginLabel.layer.cornerRadius = 10
        loginTextField.layer.cornerRadius = 10
        passwordTextField.layer.cornerRadius = 10
        forgetPassButton.layer.cornerRadius = 10
        submitButton.layer.cornerRadius = 10
    }
    // MARK: Lifecircle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
}
