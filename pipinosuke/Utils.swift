//
//  Utils.swift
//  pipinosuke
//
//  Created by pipinosuke on 2016/10/08.
//  Copyright © 2016年 pipinosuke. All rights reserved.
//
import UIKit

class Utils {
    static func createErrorObject(message: String, code: Int = 100) -> NSError {
        let domain = "jp.co.candle.app.marble"
        
        return NSError(domain: domain, code: 100, userInfo: [NSLocalizedDescriptionKey: message])
    }
    
    static func createViewController<T: StoryboardLoadable>() -> T {
        let sb = UIStoryboard(name: T.storyboardName, bundle: nil)
        return sb.instantiateInitialViewController() as! T
    }
}