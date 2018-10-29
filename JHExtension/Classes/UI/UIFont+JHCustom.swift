//
//  UIFont+JHFont.swift
//  Ray
//
//  Created by Ray on 2018/4/9.
//  Copyright © 2018年 Ray. All rights reserved.
//

import UIKit

extension UIFont {
    
    public static func jh_font(ofSize: CGFloat) -> UIFont {
        return UIFont(name: "PingFang-SC-Regular", size: ofSize) ?? UIFont.systemFont(ofSize: ofSize)
    }

}
