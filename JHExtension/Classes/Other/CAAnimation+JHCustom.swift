//
//  CAAnimation+JHAnimation.swift
//  Ray
//
//  Created by Ray on 2018/4/16.
//  Copyright © 2018年 Ray. All rights reserved.
//

import UIKit

extension CAAnimation {
    public static func rotation(duration: CFTimeInterval = 0.5) -> CABasicAnimation {
        let anim = CABasicAnimation(keyPath: "transform.rotation")
        anim.fromValue = 0
        anim.toValue = Double.pi * 2
        anim.duration = duration
        anim.repeatCount = MAXFLOAT
        anim.isRemovedOnCompletion = false
        return anim
    }
}
