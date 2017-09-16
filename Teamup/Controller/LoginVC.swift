//
//  LoginVC.swift
//  Teamup
//
//  Created by Suprem Vanam on 14/09/17.
//  Copyright © 2017 Suprem Vanam. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var emailField: InsetTextField!
    @IBOutlet weak var passwordField: InsetTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emailField.delegate = self
        passwordField.delegate = self
    }

    @IBAction func signinBtnPressed(_ sender: Any) {
        if emailField.text != nil && passwordField.text != nil {
            AuthService.instance.loginUser(withEmail: emailField.text!, andPassword: passwordField.text!, loginComplete: { (success, loginError) in
                if success {
                    self.dismiss(animated: true, completion: nil)
                    print("Successfully logged in")
                } else {
                    print(String(describing: loginError?.localizedDescription))
                }
                
                AuthService.instance.registerUser(withEmail: self.emailField.text!, andPassword: self.passwordField.text!, userCreationComplete: { (success, registrationError) in
                    if success {
                        print("Successfully registered user")
                        AuthService.instance.loginUser(withEmail: self.emailField.text!, andPassword: self.passwordField.text!, loginComplete: { (success, loginError) in
                            if success {
                                self.dismiss(animated: true, completion: nil)
                                print("Successfully logged in")
                            } else {
                                print(String(describing : loginError?.localizedDescription))
                            }
                        })
                        
                        
                    } else {
                        print(String(describing: registrationError?.localizedDescription))
                    }
                    
                })
                
            })
        }
    
    }
    
    
    @IBAction func closeBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}

extension LoginVC: UITextFieldDelegate {
    
}
