//
//  StoryboardLoadable.swift
//  pipinosuke
//
//  Created by pipinosuke on 2016/10/08.
//  Copyright © 2016年 pipinosuke. All rights reserved.
//

import UIKit

protocol StoryboardLoadable: class {
    static var storyboardName: String { get }
}

extension StoryboardLoadable where Self: UIViewController {
    
    static var storyboardName: String {
        return NSStringFromClass(self).componentsSeparatedByString(".").last!.stringByReplacingOccurrencesOfString("ViewController", withString: "")
    }
    
}