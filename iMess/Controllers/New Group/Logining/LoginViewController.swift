//
//  LoginViewController.swift
//  iMess
//
//  Created by Valentin Rimsha on 24.09.22.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: Outlets
    
    @IBOutlet weak var loginLabel: UILabel!
    
    @IBOutlet weak var loginTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var forgetPassButton: UIButton!
    
    @IBOutlet weak var submitButton: UIButton!
    
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
