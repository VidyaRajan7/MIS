//
//  CommonMethods.swift
//  MIS
//
//  Created by Developer Admin on 07/08/20.
//  Copyright © 2020 Developer Admin. All rights reserved.
//

import Foundation
import UIKit

class CommonMethods {
    
    func keybordWillShow(notification: NSNotification, view: UIView, scrollView: UIScrollView) {
        if let userInfo = notification.userInfo {
            var keyboardFrame:CGRect = (userInfo[UIResponder.keyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
            keyboardFrame = view.convert(keyboardFrame, from: nil)
            var contentInset:UIEdgeInsets = scrollView.contentInset
            contentInset.bottom = keyboardFrame.size.height + 20
            scrollView.contentInset = contentInset
        }
    }
    
    func keyboardWillHide(scrollView: UIScrollView) {
        let contentInset:UIEdgeInsets = UIEdgeInsets.zero
        scrollView.contentInset = contentInset
    }
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
