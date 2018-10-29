//
//  UIView+JHCustom.swift
//  Ray
//
//  Created by Ray on 2018/4/2.
//  Copyright © 2018年 Ray. All rights reserved.
//

import UIKit
import MBProgressHUD

extension UIView {

    /// 给视图加上线条
    @discardableResult
    public  func addLine(color: UIColor? = UIColor.hex(0xE6E6E6), top: Bool) -> UIView {
        return UIView().then {
            $0.backgroundColor = color
            addSubview($0)
            $0.snp.makeConstraints({ (make) in
                if top {
                    make.top.equalToSuperview()
                } else {
                    make.bottom.equalToSuperview()
                }
                make.left.right.equalToSuperview()
                make.height.equalTo(0.5)
            })
        }
    }
    
    @discardableResult
    public  func addLabel(text: String? = "", color: UIColor? = UIColor.hex(0x222222), height: CGFloat? = 0, size: CGFloat) -> UILabel {
        return UILabel().then {
            $0.text = text
            $0.textColor = color
            $0.font = UIFont.jh_font(ofSize: size)
            addSubview($0)
            $0.snp.makeConstraints({ (make) in
                make.height.equalTo(height == 0 ? size : height ?? 15)
            })
        }
    }
    
    public func removeSubViews() {
        for subView in subviews {
            subView.removeFromSuperview()
        }
    }
}
