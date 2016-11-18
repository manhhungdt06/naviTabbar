//
//  LoginViewController.swift
//  NaviTabbarController
//
//  Created by techmaster on 11/8/16.
//  Copyright © 2016 techmaster. All rights reserved.
//

import UIKit

class LoginViewController: BaseViewController {
    
    @IBOutlet weak var usernameInputTextField: CustomTextField!
    
    @IBOutlet weak var passwordInputTextField: CustomTextField!
    
    @IBOutlet weak var logoTop: NSLayoutConstraint!
    
    var users : [User]!
    
    var isAuthenticated : Bool!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateContraint(logoTop)
        
        tranparentNavigation = true
        
        backBtnTitle = ""
    }
    
    @IBAction func actionSignIn(_ sender: AnyObject) {
        let signUpViewController = storyboard?.instantiateViewController(withIdentifier: "SignUpVC") as! SignUpViewController
        
        self.navigationController?.pushViewController(signUpViewController, animated: true)
    }
}
