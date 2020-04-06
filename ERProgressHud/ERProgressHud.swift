//
//  ERProgressHud.swift
//  MrPaddock
//
//  Created by Mahmudul Hasan Razib on 8/22/16.
//  Copyright © 2016 Mahmudul Hasan Razib. All rights reserved.
//

import UIKit

let activityIndicator = UIActivityIndicatorView.init(style: UIActivityIndicatorView.Style.medium)
let containerView = UIView()

class ERProgressHud {
    
    class func show () {
        containerView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        let color = UIColor.gray
        let alphaColor = color.withAlphaComponent(0.5)
        containerView.backgroundColor = alphaColor
        
        activityIndicator.center =  CGPoint(x: UIScreen.main.bounds.size.width/2, y: UIScreen.main.bounds.size.height/2)
        activityIndicator.color = UIColor.white
        activityIndicator.hidesWhenStopped = true
        
        let window = UIApplication.shared.connectedScenes
            .filter({$0.activationState == .foregroundActive})
            .map({$0 as? UIWindowScene})
            .compactMap({$0})
            .first?.windows
            .filter({$0.isKeyWindow}).first
        
        if window != nil {
            containerView.addSubview(activityIndicator)
            window?.addSubview(containerView)
            activityIndicator.startAnimating()
        }
    }
    
    class func hide (){
        activityIndicator.stopAnimating()
        containerView.removeFromSuperview()
    }
}
