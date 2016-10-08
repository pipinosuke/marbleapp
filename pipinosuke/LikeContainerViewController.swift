//
//  LikeContainerViewController.swift
//  pipinosuke
//
//  Created by pipinosuke on 2016/10/09.
//  Copyright © 2016年 pipinosuke. All rights reserved.
//

import UIKit

class LikeContainerViewController: UINavigationController {

    var statusBarStyle: UIStatusBarStyle = UIStatusBarStyle.Default
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return statusBarStyle
    }
    
}
