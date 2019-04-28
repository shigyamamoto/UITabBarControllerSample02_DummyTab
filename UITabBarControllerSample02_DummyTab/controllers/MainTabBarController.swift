//
//  MainTabBarController.swift
//  UITabBarControllerSample02_DummyTab
//
//  Created by shigeki yamamoto on 2019/04/28.
//  Copyright © 2019 shigeki yamamoto. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // UITabBarControllerDelegate
        self.delegate = self
    }
}

extension MainTabBarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if viewController is DummyDownloadsViewController {
            // モーダル表示
            let storyboard: UIStoryboard = self.storyboard!
            let downloadsView = storyboard.instantiateViewController(withIdentifier: "downloads") as! DownloadsViewController
            present(downloadsView, animated: true, completion: nil)
            return false
        } else if viewController is DummyContactsViewController {
            // ダイアログ表示
            let alert: UIAlertController = UIAlertController( title: "ダイアログ表示", message: "ダイアログ表示です。", preferredStyle: .alert)
            let defaultAction: UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler:{
                (action: UIAlertAction!) -> Void in
                // OKを押したときの処理
                print("OKを押したときの処理")
            })
            let cancelAction: UIAlertAction = UIAlertAction(title: "キャンセル", style: UIAlertAction.Style.cancel, handler:{
                (action: UIAlertAction!) -> Void in
                // キャンセルを押したときの処理
                print("キャンセルを押したときの処理")
            })
            alert.addAction(cancelAction)
            alert.addAction(defaultAction)
            present(alert, animated: true, completion: nil)
            return false
        }
        return true
    }
}
