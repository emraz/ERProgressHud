//
//  ERProgressHud.swift
//  MrPaddock
//
//  Created by Mahmudul Hasan Razib on 8/22/16.
//  Copyright © 2016 Mahmudul Hasan Razib. All rights reserved.
//

import UIKit

let activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.whiteLarge)
let containerView = UIView()

class ERProgressHud {
    
    class func show (){
        
        containerView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        let color = UIColor.gray
        let alphaColor = color.withAlphaComponent(0.5)
        containerView.backgroundColor = alphaColor
        
        activityIndicator.center =  CGPoint(x: UIScreen.main.bounds.size.width/2, y: UIScreen.main.bounds.size.height/2)
        activityIndicator.color = UIColor.white
        activityIndicator.hidesWhenStopped = true
        if let window :UIWindow = UIApplication.shared.keyWindow {
            containerView.addSubview(activityIndicator)
            window.addSubview(containerView)
            activityIndicator.startAnimating()
        }
    }
    
    class func hide (){
        activityIndicator.stopAnimating()
        containerView.removeFromSuperview()
    }

}
