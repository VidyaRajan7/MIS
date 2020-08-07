//
//  LoginViewController.swift
//  MIS
//
//  Created by Developer Admin on 07/08/20.
//  Copyright © 2020 Developer Admin. All rights reserved.
//

import UIKit

class LoginViewController: CommonViewController {
    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var userNameView: UIView!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!
    var viewModel = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginInitialSetup()
    }
    
    func loginInitialSetup() {
        userNameText.delegate = self
        passwordText.delegate = self
        userNameView.setOffset()
        passwordView.setOffset()
        loginButton.setButtonOffset()
        
        //keyboard show/hide notification
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name:UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name:UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func keyboardWillShow(notification:NSNotification, scrollView: UIScrollView){
        viewModel.commonMethods.keybordWillShow(notification: notification, view: self.view, scrollView: self.scrollView)
    }

    @objc func keyboardWillHide(notification:NSNotification, scrollView: UIScrollView){
        viewModel.commonMethods.keyboardWillHide(scrollView: self.scrollView)
    }

}

extension LoginViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
}
