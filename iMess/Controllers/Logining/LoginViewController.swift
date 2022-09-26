//
//  LoginViewController.swift
//  iMess
//
//  Created by Valentin Rimsha on 24.09.22.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    // MARK: Outlets
    
    @IBOutlet private weak var loginLabel: UILabel!
    @IBOutlet private weak var loginTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    @IBOutlet private weak var forgetPassButton: UIButton!
    @IBOutlet private weak var submitButton: UIButton!
    
    // MARK: Properties
    
    private let convStoryboard = UIStoryboard(name: "Conversation", bundle: nil)
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    self.view.endEditing(true)
    }
    
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
    
    // MARK: Actions
    
    @IBAction func didTappedSubmitButton(_ sender: UIButton) {
        
        FirebaseAuth.Auth.auth().signIn(withEmail: loginTextField.text!, password: passwordTextField.text!, completion: { [self]_,error in
            if error == nil {
//                if let convVC = convStoryboard.instantiateViewController(withIdentifier: "conversationNavVC") as? ConversationNavigationViewController {
//                    convVC.modalPresentationStyle = .fullScreen
//                    present(convVC, animated: false)
//                }
            } else {
                print("No account yet")
            }
        })
    }
}
