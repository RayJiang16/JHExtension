//
//  CGRect+JHRect.swift
//  Ray
//
//  Created by Ray on 2018/4/10.
//  Copyright © 2018年 Ray. All rights reserved.
//

import UIKit

extension CGRect {
    
    public var x: CGFloat {
        get {
            return origin.x
        } set {
            origin.x = newValue
        }
    }
    
    public var y : CGFloat {
        get {
            return origin.y
        } set {
            origin.y = newValue
        }
    }
    
    public var right: CGFloat {
        return origin.x + size.width
    }
    
    public var bottom: CGFloat {
        return origin.y + size.height
    }
    
}
