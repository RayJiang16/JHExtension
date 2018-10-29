//
//  UIColor+JHColor.swift
//  Ray
//
//  Created by Ray on 2018/4/2.
//  Copyright © 2018年 Ray. All rights reserved.
//

import UIKit

extension UIColor {

    /// FFCA2D 主题色
    public static var theme: UIColor { return UIColor.hex(0xFFCA2D) }
    
    /// F5F5F5 View背景色
    public static var bg: UIColor { return UIColor.hex(0xF5F5F5) }
    
    /// 222222 正文字体颜色
    public static var word: UIColor { return UIColor.hex(0x222222) }
    
    /// 666666 副标签颜色
    public static var subWord: UIColor { return UIColor.hex(0x666666) }
    
    /// 999999 灰色
    public static var grayColor: UIColor { return UIColor.hex(0x999999) }
    
    /// E5E5E5 线条颜色
    public static var line: UIColor { return UIColor.hex(0xE5E5E5) }
    
    /// CCCCCC 按钮边框
    public static var btnBorder: UIColor { return UIColor.hex(0xCCCCCC) }
    
    /// FAFAFA Cell选中的颜色
    public static var cellSelectd: UIColor { return UIColor.hex(0xFAFAFA) }
    
}

extension UIColor {
    /// 16进制转Color
    public static func hex(_ hex: UInt32, alpha: CGFloat = 1.0) -> UIColor {
        let red   = CGFloat((hex & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((hex & 0x00FF00) >> 8 ) / 255.0
        let blue  = CGFloat((hex & 0x0000FF)      ) / 255.0
        return self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    /// 16进制字符串转Color
    public static func hexString(_ colorStr: String, alpha: CGFloat = 1.0) -> UIColor {
        var cStr: NSString = colorStr.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).uppercased() as NSString
        
        if cStr.hasPrefix("#") {
            cStr = cStr.substring(from: 1) as NSString
        }
        if cStr.length != 6 {
            return UIColor.white
        }
        
        let rStr = cStr.substring(with: NSRange.init(location: 0, length: 2))
        let gStr = cStr.substring(with: NSRange.init(location: 2, length: 2))
        let bStr = cStr.substring(with: NSRange.init(location: 4, length: 2))
        
        var r: CUnsignedInt = 0
        var g: CUnsignedInt = 0
        var b: CUnsignedInt = 0
        Scanner(string: rStr).scanHexInt32(&r)
        Scanner(string: gStr).scanHexInt32(&g)
        Scanner(string: bStr).scanHexInt32(&b)
        
        return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: alpha)
    }
}
