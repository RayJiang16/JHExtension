//
//  UITabBar+JHBadge.swift
//  Ray
//
//  Created by Ray on 2018/5/21.
//  Copyright © 2018年 Ray. All rights reserved.
//

import UIKit

extension UITabBar {
    
    public func setBadge(index: Int, show: Bool) {
        if show {
            showBadge(index: index)
        } else {
            hideBadge(index: index)
        }
    }
    
    public func showBadge(index: Int) {
        let badgeView = UIView()
        badgeView.tag = index + 100
        badgeView.layer.cornerRadius = CGFloat(6 * 0.5)
        badgeView.backgroundColor = UIColor.red
        
        let tabFrame = self.frame
        let percentX: Double = (Double(index) + 0.6) / 4
        let x: Double = ceil(percentX * Double(tabFrame.width))
        let y: Double = ceil(0.1 * Double(tabFrame.height))
        badgeView.frame = CGRect(x: x, y: y, width: 6, height: 6)
        self.addSubview(badgeView)
    }
    
    @discardableResult
    public func hideBadge(index: Int) -> Bool {
        var tag = false
        for subView in self.subviews {
            if subView.tag == index + 100 {
                tag = true
                subView.removeFromSuperview()
            }
        }
        return tag
    }
    
}
