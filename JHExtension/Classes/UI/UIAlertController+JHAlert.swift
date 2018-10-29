//
//  UIAlertController+JHAlert.swift
//  Ray
//
//  Created by Ray on 2018/6/12.
//  Copyright © 2018年 Ray. All rights reserved.
//

import UIKit

extension UIAlertController {
    
    public static func confirmAlert(title: String, message: String?, confirmTitle: String, confirmHandler: ((UIAlertAction) -> Void)?) -> UIAlertController {
        return alert(title: title, message: message, confirmTitle: confirmTitle, confirmHandler: confirmHandler, cancelTitle: "取消")
    }
    
    public static func alert(title: String, message: String?, confirmTitle: String, confirmHandler: ((UIAlertAction) -> Void)? = nil, cancelTitle: String = "") -> UIAlertController {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let yesAction = UIAlertAction(title: confirmTitle, style: .default, handler: confirmHandler)
        let noAction = UIAlertAction(title: cancelTitle, style: .cancel, handler: nil)
        alert.addAction(yesAction)
        if cancelTitle.count != 0 {
            alert.addAction(noAction)
        }
        return alert
    }
    
}

extension UIAlertController {
    
    @discardableResult
    public func addConfirm(_ confirmText: String? = "确定", handler: ((UIAlertAction) -> Void)? = nil) -> UIAlertController {
        let confirmAction = UIAlertAction(title: confirmText, style: .default, handler: handler)
        self.addAction(confirmAction)
        return self
    }
    
    @discardableResult
    public func addCancel(_ cancelText: String? = "取消", handler: ((UIAlertAction) -> Void)? = nil) -> UIAlertController {
        let cancelAction = UIAlertAction(title: cancelText, style: .cancel, handler: handler)
        self.addAction(cancelAction)
        return self
    }
    
    @discardableResult
    public func addDestory(_ destoryText: String, handler: ((UIAlertAction) -> Void)? = nil) -> UIAlertController {
        let destoryAction = UIAlertAction(title: destoryText, style: .destructive, handler: handler)
        self.addAction(destoryAction)
        return self
    }
    
}
