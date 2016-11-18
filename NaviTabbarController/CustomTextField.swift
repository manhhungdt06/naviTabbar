//
//  CustomTextField.swift
//  NaviTabbarController
//
//  Created by techmaster on 11/8/16.
//  Copyright © 2016 techmaster. All rights reserved.
//

import UIKit

class CustomTextField: UITextField {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        // TODO
        config()
    }
    
    func config() {
        
        backgroundColor = UIColor.white
        textColor = UIColor.black
        layer.cornerRadius = 8.0
        textAlignment = .left
        font = UIFont.init(name: "SFUIText-Light", size: 14)
        contentVerticalAlignment = .center
        
        print("config backgroundColor = \(backgroundColor)")
        
        switch tag {
        case 101:
            createLeftView("TextFieldUserName")
            //configText("UserName", fontName: "SFUIText-Light", fontSize: 14)
        case 102:
            createLeftView("TextFieldPassword")
            //configText("........", fontName: "SFUIText-Bold", fontSize: 14)
        case 103:
            createLeftView("Email")
            //configText("Email", fontName: "SFUIText-Light", fontSize: 14)
        case 104:
            createLeftView("TextFieldPassword")
            //configText("Password", fontName: "SFUIText-Light", fontSize: 14)
        case 105:
            createLeftView("Confirm")
            //configText("Confirm password", fontName: "SFUIText-Light", fontSize: 14)
        default:
            print("none")
        }
        
        leftViewMode = .always
    }
    
    func createLeftView(_ imageName: String) {
        let leftIconView = UIImageView(image: UIImage(named: imageName))
        
        let subView = UIView(frame: CGRect(x: 0, y: 0, width: 45, height: 45))
        
        leftIconView.center = subView.center
        
        leftView = subView
    }
    
    func configText(_ placeInput: String, fontName: String, fontSize: CGFloat) {
        
        print("\(fontName) and \(fontSize)")
        
        let attributeDict = [NSFontAttributeName : UIFont.init(name: fontName, size: fontSize)!,NSForegroundColorAttributeName: UIColor.white]
        
        attributedPlaceholder = NSAttributedString(string: placeInput, attributes: attributeDict)
    }
    
}
