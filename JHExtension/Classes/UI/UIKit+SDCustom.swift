//
//  UIKit+JHCustom.swift
//  Ray
//
//  Created by Ray on 2018/4/16.
//  Copyright © 2018年 Ray. All rights reserved.
//

import UIKit
import Then
import SnapKit

extension NSObject {
    public func iPhoneXValue<T>(_ xValue: T, _ otherValue: T) -> T {
        return UIDevice.isiPhoneX ? xValue : otherValue
    }
    
    /// Add top margin
    public func addTopMargin(_ value: CGFloat) -> CGFloat {
        return value + UITool.topMargin
    }
    
    public func addTopMargin(_ value: Int) -> Int {
        return value + Int(UITool.topMargin)
    }
    
    public func addTopMargin(_ value: Double) -> Double {
        return value + Double(UITool.topMargin)
    }
    
    /// Sub top margin
    public func subTopMargin(_ value: CGFloat) -> CGFloat {
        return (-value) - UITool.topMargin
    }
    
    public func subTopMargin(_ value: Int) -> Int {
        return (-value) - Int(UITool.topMargin)
    }
    
    public func subTopMargin(_ value: Double) -> Double {
        return (-value) - Double(UITool.topMargin)
    }
    
    /// Add bottom margin
    public func addBottomMargin(_ value: CGFloat) -> CGFloat {
        return value + UITool.bottomMargin
    }
    
    public func addBottomMargin(_ value: Int) -> Int {
        return value + Int(UITool.bottomMargin)
    }
    
    public func addBottomMargin(_ value: Double) -> Double {
        return value + Double(UITool.bottomMargin)
    }
    
    /// Sub bottom margin
    public func subBottomMargin(_ value: CGFloat) -> CGFloat {
        return (-value) - UITool.bottomMargin
    }
    
    public func subBottomMargin(_ value: Int) -> Int {
        return (-value) - Int(UITool.bottomMargin)
    }
    
    public func subBottomMargin(_ value: Double) -> Double {
        return (-value) - Double(UITool.bottomMargin)
    }
}

struct UITool {
    public static let `default` = UITool()
    
    fileprivate let _topMargin: CGFloat
    fileprivate let _bottomMargin: CGFloat
    
    private init() {
        if #available(iOS 11.0, *) {
            _topMargin = UIApplication.shared.keyWindow?.safeAreaInsets.top ?? 0.0
            _bottomMargin = UIApplication.shared.keyWindow?.safeAreaInsets.bottom ?? 0.0
        } else {
            _topMargin = 0.0
            _bottomMargin = 0.0
        }
    }
    
    public static var topMargin: CGFloat {
        return UITool.default._topMargin
    }
    
    public static var bottomMargin: CGFloat {
        return UITool.default._bottomMargin
    }
}
