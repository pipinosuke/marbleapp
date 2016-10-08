//
//  MainTabBarController.swift
//  pipinosuke
//
//  Created by pipinosuke on 2016/10/09.
//  Copyright © 2016年 pipinosuke. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.tabBar.translucent = true
    }

    override func viewDidLoad() {
        
        let articleStoryboard = UIStoryboard(name: "Article", bundle: nil)
        let articleViewController = articleStoryboard.instantiateInitialViewController() as! ArticleContainerViewController
        let searchStoryboard = UIStoryboard(name: "Search", bundle: nil)
        let searchViewController = searchStoryboard.instantiateInitialViewController() as! SearchContainerViewController
        let mypageStoryboard = UIStoryboard(name: "Mypage", bundle: nil)
        let mypageViewController = mypageStoryboard.instantiateInitialViewController() as! MypageContainerViewController
        let likeStoryboard = UIStoryboard(name: "Like", bundle: nil)
        let likeViewController = likeStoryboard.instantiateInitialViewController() as! LikeContainerViewController
        let viewControllers = [articleViewController,searchViewController,likeViewController,mypageViewController]
        self.setViewControllers(viewControllers, animated: false)
        super.viewDidLoad()
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
