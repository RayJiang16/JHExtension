//
//  UIView+JHRect.swift
//  Ray
//
//  Created by Ray on 2018/4/10.
//  Copyright © 2018年 Ray. All rights reserved.
//

import UIKit

extension UIView {
    
    public var x: CGFloat {
        get {
            return frame.origin.x
        } set {
            frame.origin = CGPoint(x: newValue, y: y)
        }
    }
    
    public var y : CGFloat {
        get {
            return frame.origin.y
        } set {
            frame.origin = CGPoint(x: x, y: newValue)
        }
    }
    
    public var width: CGFloat {
        get {
            return frame.size.width
        } set {
            frame.size = CGSize(width: newValue, height: height)
        }
    }
    
    public var height: CGFloat {
        get {
            return frame.size.height
        } set {
            frame.size = CGSize(width: width, height: newValue)
        }
    }
    
    public var right: CGFloat {
        return frame.origin.x + bounds.size.width
    }
    
    public var bottom: CGFloat {
        return frame.origin.y + bounds.size.height
    }
    
    public var size: CGSize {
        get {
            return frame.size
        } set {
            frame.size = newValue
        }
    }
    
}

