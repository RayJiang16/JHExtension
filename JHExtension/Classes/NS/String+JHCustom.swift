//
//  String+JHCustom.swift
//  Ray
//
//  Created by Ray on 2018/4/4.
//  Copyright © 2018年 Ray. All rights reserved.
//

import UIKit

extension String {
    
    public func heightOfWidth(_ width: CGFloat, font: UIFont) -> CGFloat {
        if self.count == 0 {
            return 0
        }
        
        let constraintRect = CGSize(width: width, height: CGFloat.greatestFiniteMagnitude)
        let boundingBox = self.boundingRect(with: constraintRect, options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: [NSAttributedStringKey.font: font], context: nil)
        return boundingBox.height+1
    }
    
    public func widthOfHeight(_ height: CGFloat, font: UIFont) -> CGFloat {
        if self.count == 0 {
            return 0
        }
        
        let constraintRect = CGSize(width: CGFloat.greatestFiniteMagnitude, height: height)
        let boundingBox = self.boundingRect(with: constraintRect, options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: [NSAttributedStringKey.font: font], context: nil)
        return boundingBox.width+1
    }
    
    public func removeSpaceAndEnter() -> String {
        var str = self.trimmingCharacters(in: .whitespaces)
        str =  str.replacingOccurrences(of: " ", with: "")
        str =  str.replacingOccurrences(of: "\n", with: "")
        return str.replacingOccurrences(of: "\r", with: "")
    }

}
