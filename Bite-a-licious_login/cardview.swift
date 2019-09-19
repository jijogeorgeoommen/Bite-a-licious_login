//
//  cardview.swift
//  Bite-a-licious_login
//
//  Created by JIJO G OOMMEN on 17/07/19.
//  Copyright © 2019 JIJO G OOMMEN. All rights reserved.
//

import UIKit
@IBDesignable class CardView: UIView {
    
    @IBInspectable var cornerradius : CGFloat = 2
    @IBInspectable var shadowOffsetWidth : CGFloat = 0
    @IBInspectable var shadowOffsetHeight : CGFloat = 5
    @IBInspectable var shadowColor = UIColor.black
    @IBInspectable var shadowOpacity : CGFloat = 0.5
    
    override func layoutSubviews() {
        layer.cornerRadius = cornerradius
        layer.shadowColor = shadowColor.cgColor
        layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetHeight)
        var shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerradius)
        
        layer.shadowPath = shadowPath.cgPath
        layer.shadowOpacity = Float(shadowOpacity)
    }
    
    
    
}
