//
//  BaseViewController.swift
//  NaviTabbarController
//
//  Created by techmaster on 11/8/16.
//  Copyright © 2016 techmaster. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    var shadowNavigationBar: Bool? {
        didSet {
            showShadow(shadowNavigationBar!)
        }
    }
    
    var navigationTitle: String? {
        didSet {
            guard let naviTitle = navigationTitle else {return}
            changeTitleNavigationBar(naviTitle)
        }
    }
    
    var tranparentNavigation: Bool? {
        didSet {
            if tranparentNavigation == true {
                setTranparentNavigation()
            } else {
                defaulTranparentNavigation()
            }
        }
    }
    
    var backBtnTitle: String? {
        didSet {
            guard let btnTitle = backBtnTitle else {return}
            backBtnConfig(btnTitle)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    fileprivate func showShadow(_ show:Bool) {
        if show {
            self.navigationController?.navigationBar.shadowImage = nil
        } else {
            self.navigationController?.navigationBar.shadowImage = UIImage()
        }
    }
    
    fileprivate func changeTitleNavigationBar(_ title: String) {
        self.title = title
    }
    
    fileprivate func defaulTranparentNavigation() {
        self.navigationController?.navigationBar.setBackgroundImage(nil, for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = self.navigationController?.navigationBar.shadowImage
    }
    
    fileprivate func setTranparentNavigation() {
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    fileprivate func backBtnConfig(_ title: String) {
        let backBtn = UIBarButtonItem()
        backBtn.title = title
        navigationItem.backBarButtonItem = backBtn
        // TODO
    }
    
    func updateContraint(_ contraint: NSLayoutConstraint) {
        let scale = UIScreen.main.bounds.size.height/667
        contraint.constant = contraint.constant * scale
    }
}






