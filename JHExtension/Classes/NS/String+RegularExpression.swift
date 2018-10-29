//
//  String+RegularExpression.swift
//  Ray
//
//  Created by Ray on 2018/5/22.
//  Copyright © 2018年 Ray. All rights reserved.
//

import Foundation

extension String {
    
    public var isAllNumber: Bool {
        let regex = "[0-9]+"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
        return predicate.evaluate(with: self)
    }
    
    public var isNumberOrWord: Bool {
        let regex = "[A-Z0-9a-z]+"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
        return predicate.evaluate(with: self)
    }
    
    public var isEmail: Bool {
        let regex = "^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(.[a-zA-Z0-9_-]+)+$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
        return predicate.evaluate(with: self)
    }
    
}
