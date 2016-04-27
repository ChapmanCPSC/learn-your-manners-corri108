//
//  NSDefaultExtensions.swift
//  corri108Assignment4
//
//  Created by Corrin, Will on 4/27/16.
//  Copyright © 2016 Corrin, William. All rights reserved.
//

import Foundation

extension NSUserDefaults {
    func setString(string:String, forKey:String) {
        setObject(string, forKey: forKey)
    }
    func setDate(date:NSDate, forKey:String) {
        setObject(date, forKey: forKey)
    }
    func dateForKey(string:String) -> NSDate? {
        return objectForKey(string) as? NSDate
    }
}