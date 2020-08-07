//
//  LandingViewController.swift
//  MIS
//
//  Created by Wakralab on 06/08/20.
//  Copyright © 2020 Developer Admin. All rights reserved.
//

import UIKit

class LandingViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetUp()
    }
    
    func initialSetUp() {
        
        self.navigationController?.navigationBar.isHidden = true
        var fontSize = CGFloat()
        if(DeviceType.IS_IPHONE_5_OR_LESS) {
            fontSize = 20
        } else if(DeviceType.IS_IPAD) {
            fontSize = 29
        } else {
            fontSize = 22
        }
        if let loginFont = UIFont(name: FontName.gothamLight, size: fontSize) {
            let attrs = [
                NSAttributedString.Key.font: loginFont,
                NSAttributedString.Key.foregroundColor: UIColor.white,
                NSAttributedString.Key.underlineStyle: 1.5] as [NSAttributedString.Key: Any]
            let attributedString = NSMutableAttributedString(string: CommonStrings.emptyString)
            let buttonTitleStr = NSMutableAttributedString(string: CommonStrings.loginName, attributes:attrs)
            attributedString.append(buttonTitleStr)
            loginButton.setAttributedTitle(attributedString, for: .normal)
            
        }
    }
    
    @IBAction func didTapLoginButton(_ sender: UIButton) {
    }

}
