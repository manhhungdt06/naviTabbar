//
//  SignUpViewController.swift
//  NaviTabbarController
//
//  Created by techmaster on 11/8/16.
//  Copyright © 2016 techmaster. All rights reserved.
//

import UIKit

class SignUpViewController: BaseViewController {
    
    @IBOutlet weak var logoTop: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateContraint(logoTop)
    }
}
