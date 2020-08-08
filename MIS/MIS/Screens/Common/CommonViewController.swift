//
//  CommonViewController.swift
//  MIS
//
//  Created by Wakralab on 07/08/20.
//  Copyright © 2020 Developer Admin. All rights reserved.
//

import UIKit

class CommonViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
    }
    
    func initialSetup() {
        let backgroundImageView = UIImageView()
        backgroundImageView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        backgroundImageView.image = UIImage(named: ImageNames.backgroundImage)
        self.view.insertSubview(backgroundImageView, at: 0)
    }

}
