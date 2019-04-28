//
//  DownloadsViewController.swift
//  UITabBarControllerSample02_DummyTab
//
//  Created by shigeki yamamoto on 2019/04/28.
//  Copyright © 2019 shigeki yamamoto. All rights reserved.
//

import UIKit

class DownloadsViewController: UIViewController {

    @IBOutlet var closeBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapCloseBtn() {
        dismiss(animated: true, completion: nil)
    }
}
