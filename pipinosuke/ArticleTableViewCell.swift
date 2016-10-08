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
    

    
    func bindDataCell(article: Article) {
        // 引数にArticleオブジェクトを受け取って、cellの作成を行います.
        self.title.text = article.title
        self.date.text = String(article.modified)
        self.desc.text = article.body
        self.user.text = article.userData.userName
        if let thumbnail: String = article.thumb {
            if let data = NSData(contentsOfURL: NSURL(string: thumbnail)!) {
                self.thumbnail.image = UIImage(data: data)
            }
        }
    }
    

}