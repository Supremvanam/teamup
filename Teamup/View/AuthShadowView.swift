//
//  AuthShadowView.swift
//  Teamup
//
//  Created by Suprem Vanam on 14/09/17.
//  Copyright © 2017 Suprem Vanam. All rights reserved.
//

import UIKit

@IBDesignable
class AuthShadowView: UIView {
    
//    let shadowHeight: CGFloat = 10
//    let shadowPath = CGMutablePath()
    
    override func prepareForInterfaceBuilder() {
        setupView()
        super.prepareForInterfaceBuilder()
    }
    
    override func awakeFromNib() {
        setupView()
        super.awakeFromNib()
    }

    func setupView () {
        self.layer.shadowOpacity = 1
        self.layer.shadowColor = #colorLiteral(red: 0.06043291837, green: 0.5894582272, blue: 0.09843214601, alpha: 1)
        self.layer.shadowRadius = 5
        
        
//        shadowPath.move(to: CGPoint(x: layer.shadowRadius,
//                                    y: -shadowHeight))
//        shadowPath.addLine(to: CGPoint(x: layer.shadowRadius,
//                                       y: shadowHeight))
//        shadowPath.addLine(to: CGPoint(x: layer.bounds.width - layer.shadowRadius,
//                                       y: shadowHeight))
//        shadowPath.addLine(to: CGPoint(x: layer.bounds.width - layer.shadowRadius,
//                                       y: -shadowHeight))
//
//        shadowPath.addQuadCurve(to: CGPoint(x: layer.shadowRadius,
//                                            y: -shadowHeight),
//                                control: CGPoint(x: layer.bounds.width / 2,
//                                                 y: shadowHeight))
//
//        layer.shadowPath = shadowPath
    }

}
