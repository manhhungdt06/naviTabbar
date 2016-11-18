//
//  BaseTabBarController.swift
//  NaviTabbarController
//
//  Created by techmaster on 11/8/16.
//  Copyright © 2016 techmaster. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        // Do any additional setup after loading the view.
        tabBar.barStyle = .default
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.white,
                                                          NSFontAttributeName: UIFont(name: "SFUIText-Regular", size: 12)], for: UIControlState())
        
        tabBar.isTranslucent = false
        tabBar.barTintColor = UIColor.black
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let homeVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomeVC") as! HomeViewController
        
        let friendVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FriendVC") as! FriendViewController
        
        let profileVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ProfileVC") as! UserViewController
        
        let chatVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ChatVC") as! ChatViewController
        
        let homeNav = BaseNavigationController(rootViewController: homeVC)
        let friendNav = BaseNavigationController(rootViewController: friendVC)
        let profileNav = BaseNavigationController(rootViewController: profileVC)
        let chatNav = BaseNavigationController(rootViewController: chatVC)
        
        setNaviForController(friendVC, tranparent: true, naviTitle: "FRIEND", shadow: true, tabBarTitle: "Friend", image: "Friend", selectedImage: "Friend-selected")
        
        setNaviForController(homeVC, tranparent: true, naviTitle: "HOME", shadow: true, tabBarTitle: "Home",image: "Home", selectedImage: "Home-selected")
        
        setNaviForController(profileVC, tranparent: true, naviTitle: "PROFILE", shadow: true, tabBarTitle: "Profile", image: "User", selectedImage: "User-selected")
        
        setNaviForController(chatVC, tranparent: true, naviTitle: "CHAT", shadow: true, tabBarTitle: "Chat", image: "Chat", selectedImage: "Chat-selected")
        
        viewControllers = [homeNav, friendNav, profileNav, chatNav]
    }
    
    func setNaviForController(_ view: BaseViewController, tranparent: Bool, naviTitle: String, shadow: Bool, tabBarTitle: String, image: String, selectedImage: String) {
        view.navigationItem.title = naviTitle
        view.tabBarItem = UITabBarItem(title: tabBarTitle, image: UIImage(named: image)?.withRenderingMode(.alwaysOriginal), selectedImage: UIImage(named: selectedImage)?.withRenderingMode(.alwaysOriginal))
        view.tranparentNavigation = tranparent
        view.shadowNavigationBar = shadow
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
