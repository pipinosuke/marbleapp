//
//  ArticleViewController.swift
//  pipinosuke
//
//  Created by pipinosuke on 2016/10/08.
//  Copyright © 2016年 pipinosuke. All rights reserved.
//


import UIKit

class ArticleViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
        override func viewDidLoad() {
        super.viewDidLoad()
        tableView.registerNib(UINib(nibName: "ArticleTableViewCell", bundle: nil), forCellReuseIdentifier: "ArticleTableViewCell")
        tableView.rowHeight = 96.0
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


extension ArticleViewController: UITableViewDelegate, UITableViewDataSource {
    // return the number of tableCells
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    // draw the tableCells
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: ArticleTableViewCell = tableView.dequeueReusableCellWithIdentifier("ArticleTableViewCell") as! ArticleTableViewCell
        return cell
    }
}
