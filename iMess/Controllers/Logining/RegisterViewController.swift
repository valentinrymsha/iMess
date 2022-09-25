//
//  RegisterViewController.swift
//  iMess
//
//  Created by Valentin Rimsha on 24.09.22.
//

import UIKit
import FirebaseAuth

class RegisterViewController: UIViewController {

    // MARK: Outlets
    
    @IBOutlet private weak var loginTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    @IBOutlet private weak var repeatPassTextField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    // MARK: Propeties
    
    private let loginStoryboard = UIStoryboard(name: "Login", bundle: nil)
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    self.view.endEditing(true)
    }
    
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
        if let loginVC = loginStoryboard.instantiateViewController(withIdentifier: "loginVC") as? LoginViewController {
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: false)
        }
    }
    
    @IBAction private func didTappedSubmitButton(_ sender: UIButton) {
        guard loginTextField.hasText,
              passwordTextField.hasText,
              repeatPassTextField.hasText else { return }
        guard passwordTextField.text == repeatPassTextField.text else { return }
        
        FirebaseAuth.Auth.auth().createUser(withEmail: loginTextField.text!, password: passwordTextField.text!)
    }
}
