//
//  ViewController.swift
//  Demo
//
//  Created by Mahmudul Hasan on 2020/04/06.
//  Copyright © 2020 Matrix Solution Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var subView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showProgressHud(withDarkBGNoTitle sender: Any) {
        ERProgressHud.sharedInstance.show()

        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + .seconds(3)) {
            ERProgressHud.sharedInstance.hide()
        }
    }

    @IBAction func showProgressHud(withBlurBGNoTitle sender: Any) {
        ERProgressHud.sharedInstance.showWithBlurView()

        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + .seconds(3)) {
            ERProgressHud.sharedInstance.hide()
        }
    }
    
    @IBAction func showProgressHud(withTitleNoBG sender: Any) {

        ERProgressHud.sharedInstance.show(withTitle: "Loading...")

        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + .seconds(3)) {
            ERProgressHud.sharedInstance.hide()
        }
    }

    @IBAction func showProgressHud(withTitleandBlurBG sender: Any) {

        ERProgressHud.sharedInstance.showBlurView(withTitle: "Loading...")

        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + .seconds(3)) {
            ERProgressHud.sharedInstance.hide()
        }
    }
    
    @IBAction func showProgressHud(withTitleandDarkBG sender: Any) {

        ERProgressHud.sharedInstance.showDarkBackgroundView(withTitle: "Loading...")

        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + .seconds(3)) {
            ERProgressHud.sharedInstance.hide()
        }
    }
    
    @IBAction func showProgressHudToView(withDarkBGNoTitle sender: Any) {
        ERProgressHud.sharedInstance.show(view: subView)
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + .seconds(3)) {
            ERProgressHud.sharedInstance.hide()
        }
    }
}

