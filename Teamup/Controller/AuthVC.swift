//
//  AuthVC.swift
//  Teamup
//
//  Created by Suprem Vanam on 14/09/17.
//  Copyright © 2017 Suprem Vanam. All rights reserved.
//

import UIKit

class AuthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func loginWithEmailPressed(_ sender: Any) {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginVC")
        present(loginVC!, animated: true, completion: nil)
        
    }
    
    @IBAction func googleSigninBtnPressed(_ sender: Any) {
    }
    
    @IBAction func facebookSigninBtnPressed(_ sender: Any) {
    }
    
}
