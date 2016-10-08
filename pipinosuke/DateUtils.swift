//
//  DateUtils.swift
//  pipinosuke
//
//  Created by pipinosuke on 2016/10/08.
//  Copyright © 2016年 pipinosuke. All rights reserved.
//

import UIKit

extension NSDate {
    static func dateFromString(string: String, format: String = "yyyy-MM-dd HH:mm:ss") -> NSDate? {
        let dateFormatter = NSDateFormatter()
        dateFormatter.locale = NSLocale(localeIdentifier: "ja_JP")
        dateFormatter.dateFormat = format
        return dateFormatter.dateFromString(string)
    }
}