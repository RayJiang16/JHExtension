//
//  UIView+JHHUD.swift
//  Ray
//
//  Created by Ray on 2018/4/2.
//  Copyright © 2018年 Ray. All rights reserved.
//

import UIKit
import MBProgressHUD

extension UIView {
    
    public func showHUD() {
        self.show(text: "", hideAfterDelay: 0, isLoading: true, complete: nil)
    }
    
    public func show(text: String, hideAfterDelay delay: Double = 0) {
        self.show(text: text, hideAfterDelay: delay, complete: nil)
    }
    
    public func show(text: String, hideAfterDelay delay: Double = 0, isLoading: Bool = false, complete handler: (() -> Void)? = nil) {
        self.hideText()
        if delay > 0 && text.count == 0 {
            return
        }
        
        
        let hud = MBProgressHUD.showAdded(to: self, animated: true)
        self.bringSubview(toFront: hud)
        if isLoading {
            hud.mode = .indeterminate
        } else {
            hud.mode = delay == 0 ? .indeterminate : .text
            hud.isUserInteractionEnabled = delay == 0
        }

        if #available(iOS 9.0, *) {
            
        } else {
            hud.activityIndicatorColor = UIColor.white
        }
        hud.bezelView.backgroundColor = UIColor.hex(0x222222, alpha: 0.97)
        hud.label.font = UIFont.jh_font(ofSize: 16)
        hud.label.textColor = UIColor.white
        hud.label.text = text
        hud.label.numberOfLines = 0
        
        let delayTime = delay == 0 ? 10 : delay
        hud.hide(animated: true, afterDelay: delayTime)
        
        if delay > 0 && handler != nil {
            DispatchQueue.main.asyncAfter(deadline: .now() + delayTime, execute: handler!)
        }
    }
    
    public func hideText() {
        MBProgressHUD.hide(for: self, animated: true)
    }
    
}
