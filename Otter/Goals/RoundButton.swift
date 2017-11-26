//
//  RoundButton.swift
//  Otter
//
//  Created by gustavo chavez on 11/24/17.
//  Copyright © 2017 Otter. All rights reserved.
//

import UIKit
@IBDesignable
class RoundButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
}
