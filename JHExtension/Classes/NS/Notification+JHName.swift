//
//  Notification+JHName.swift
//  Ray
//
//  Created by Ray on 2018/4/4.
//  Copyright © 2018年 Ray. All rights reserved.
//

import Foundation

public enum JHNotification: String {
    
    case tokenError // Token错误
    // 继续增加
    
    public var stringValue: String {
        return "JH" + rawValue
    }
    
    public var notificationName: NSNotification.Name {
        return NSNotification.Name(stringValue)
    }
}

extension NotificationCenter {
    
    public static func jh_addNotification(name: JHNotification, object: Any?, using block: @escaping (Notification) -> Void) {
        NotificationCenter.default.addObserver(forName: name.notificationName, object: object, queue: nil, using: block)
    }
    
    public static func jh_addNotification(_ observer: Any, selector: Selector, name: JHNotification, object: Any?) {
        NotificationCenter.default.addObserver(observer, selector: selector, name: name.notificationName, object: object)
    }
    
    public static func jh_post(name: JHNotification, object: Any? = nil){
        NotificationCenter.default.post(name: name.notificationName, object: object)
    }
}
