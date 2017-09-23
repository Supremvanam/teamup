//
//  ProfileVC.swift
//  Teamup
//
//  Created by Suprem Vanam on 19/09/17.
//  Copyright © 2017 Suprem Vanam. All rights reserved.
//

import UIKit
import Firebase

class ProfileVC: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emailLabel.text = Auth.auth().currentUser?.email
        
    }

    @IBAction func logoutBtnPressed(_ sender: Any) {
        
        
    
    }
    
}
