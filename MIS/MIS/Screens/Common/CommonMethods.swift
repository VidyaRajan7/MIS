//
//  CommonMethods.swift
//  MIS
//
//  Created by Wakralab on 07/08/20.
//  Copyright © 2020 Wakralab. All rights reserved.
//

import Foundation
import UIKit

class CommonMethods {
}

extension UIView {
    
    func setOffset() {
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOpacity = 0.25
        self.layer.shadowOffset = .zero
        self.layer.shadowRadius = 5
    }
}

extension UIButton {
    
    func setButtonOffset() {
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOpacity = 0.25
        self.layer.shadowOffset = .zero
        self.layer.shadowRadius = 5
    }
}
