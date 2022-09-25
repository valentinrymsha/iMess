//
//  RegisterViewController.swift
//  iMess
//
//  Created by Valentin Rimsha on 24.09.22.
//

import UIKit

class RegisterViewController: UIViewController {

    // MARK: Outlets
    
    @IBOutlet private weak var loginTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    @IBOutlet private weak var repeatPassTextField: UITextField!
    
    @IBOutlet weak var submitButton: UIButton!
    // MARK: Propeties
    
    private func setupViews(){
        loginTextField.layer.cornerRadius = 10
        passwordTextField.layer.cornerRadius = 10
        repeatPassTextField.layer.cornerRadius = 10
        submitButton.layer.cornerRadius = 10
    }
    
    // MARK: Lifecircle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    // MARK: Actions
    
    @IBAction private func didTappedHaveAccountButton(_ sender: UIButton) {
    }
    
    
    @IBAction private func didTappedSubmitButton(_ sender: UIButton) {
    }
}
