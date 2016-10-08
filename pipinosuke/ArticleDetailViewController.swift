//
//  ArticleDetailViewController.swift
//  pipinosuke
//
//  Created by pipinosuke on 2016/10/08.
//  Copyright © 2016年 pipinosuke. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire

class ArticleDetailViewController: UIViewController {
    
    let apiManager: APIManager = APIManager.sharedInstance
    var article: Article?
    


    @IBOutlet weak var text: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let article = article{
            text.text = article.body
            text.editable = false
        }

        // Do any additional setup after loading the view.
    }
    

    @IBAction func buttonTapped(sender: UIButton) {
        let alertController = UIAlertController(
            title:"Liked!!",
            message: "",
            preferredStyle:UIAlertControllerStyle.Alert)
        
        alertController.addAction(
            UIAlertAction(
                title:"OK",
                style:UIAlertActionStyle.Default,
                handler:nil))
        
        presentViewController(
            alertController,
            animated:true,
            completion:nil)
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
