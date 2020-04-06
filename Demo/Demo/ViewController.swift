//
//  ViewController.swift
//  Demo
//
//  Created by Mahmudul Hasan on 2020/04/06.
//  Copyright © 2020 Matrix Solution Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showProgressHud(_ sender: Any) {
        ERProgressHud.show()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + .seconds(1)) {
            ERProgressHud.hide()
        }
    }
}

