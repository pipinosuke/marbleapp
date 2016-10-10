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
    }
    
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func setCell(article: Article){
        self.title.text = article.title
        self.date.text = String(article.modified)
        self.user.text = article.userData.userName
        self.desc.text = article.body
        if let thumbnailUrl: String = article.thumb {
            if let data = NSData(contentsOfURL: NSURL(string: thumbnailUrl)!) {
                self.thumbnail.image = UIImage(data: data)
            }
        }
    }
    
}