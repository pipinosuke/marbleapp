//
//  ArticleTableViewCell.swift
//  pipinosuke
//
//  Created by pipinosuke on 2016/10/08.
//  Copyright © 2016年 pipinosuke. All rights reserved.
//

import UIKit

class ArticleTableViewCell: UITableViewCell {

    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var user: UILabel!
    @IBOutlet weak var desc: UILabel!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var thumbnail: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        // これがないとXibファイルが生成されません.
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: ArticleTableViewCell = tableView.dequeueReusableCellWithIdentifier("ArticleTableViewCell") as! ArticleTableViewCell
        return cell
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    

    
    func bindDataCell() {
        // 引数にArticleオブジェクトを受け取って、cellの作成を行います.
        // 現状まだ引数をいれずに適当な値を入れています.
        title.text = "test"
        self.date.text = "date"
        self.desc.text = "siojsaioj"
        self.user.text = "user'"
        if let thumbnail: String = "https://i.vimeocdn.com/portrait/58832_300x300" {
            if let data = NSData(contentsOfURL: NSURL(string: thumbnail)!) {
                self.thumbnail.image = UIImage(data: data)
            }
        }
    }
    

}