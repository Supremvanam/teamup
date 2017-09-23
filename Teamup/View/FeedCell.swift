//
//  FeedCell.swift
//  Teamup
//
//  Created by Suprem Vanam on 24/09/17.
//  Copyright © 2017 Suprem Vanam. All rights reserved.
//

import UIKit

class FeedCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    func configureCell(profileImage: UIImage, email: String, content: String) {
        self.profileImage.image = profileImage
        self.emailLabel.text = email
        self.messageLabel.text = content
    }
    
}
