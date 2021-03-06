//
//  UIDevice+JHDevice.swift
//  Ray
//
//  Created by Ray on 2018/4/2.
//  Copyright © 2018年 Ray. All rights reserved.
//

import UIKit

extension UIDevice {
    
    public static func info(version: String) -> String {
        return "\(UIDevice.modelName),iOS \(UIDevice.current.systemVersion),V \(version),\(UIDevice.current.name)"
    }
    
    public static var isiPhoneX: Bool {
        switch deviceIdentifier {
        case "iPhone10,3", "iPhone10,6":                return true
        case "iPhone11,2", "iPhone11,6", "iPhone11,8":  return true
        default: break
        }
        
        if #available(iOS 11.0, *) {
            return (UIApplication.shared.keyWindow?.safeAreaInsets.bottom ?? 0) > 0
        }
        
        return false
    }
    
    public static var modelName: String {
        let identifier = deviceIdentifier
        switch identifier {
        case "iPhone3,1", "iPhone3,2", "iPhone3,3":     return "iPhone 4"
        case "iPhone4,1":                               return "iPhone 4s"
        case "iPhone5,1", "iPhone5,2":                  return "iPhone 5"
        case "iPhone5,3", "iPhone5,4":                  return "iPhone 5c"
        case "iPhone6,1", "iPhone6,2":                  return "iPhone 5s"
        case "iPhone7,1":                               return "iPhone 6 Plus"
        case "iPhone7,2":                               return "iPhone 6"
        case "iPhone8,1":                               return "iPhone 6s"
        case "iPhone8,2":                               return "iPhone 6s Plus"
        case "iPhone8,4":                               return "iPhone SE"
        case "iPhone9,1", "iPhone9,3":                  return "iPhone 7"
        case "iPhone9,2", "iPhone9,4":                  return "iPhone 7 Plus"
        case "iPhone10,1","iPhone10,4":                 return "iPhone 8"
        case "iPhone10,2","iPhone10,5":                 return "iPhone 8 Plus"
        case "iPhone10,3","iPhone10,6":                 return "iPhone X"
            
        case "iPhone11,2":                              return "iPhone XS"
        case "iPhone11,6":                              return "iPhone XS Max"
        case "iPhone11,8":                              return "iPhone XR"
            
        case "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4":return "iPad 2"
        case "iPad2,5", "iPad2,6", "iPad2,7":           return "iPad Mini"
        case "iPad3,1", "iPad3,2", "iPad3,3":           return "iPad 3"
        case "iPad3,4", "iPad3,5", "iPad3,6":           return "iPad 4"
        case "iPad4,1", "iPad4,2", "iPad4,3":           return "iPad Air"
        case "iPad4,4", "iPad4,5", "iPad4,6":           return "iPad Mini 2"
        case "iPad4,7", "iPad4,8", "iPad4,9":           return "iPad Mini 3"
        case "iPad5,3", "iPad5,4":                      return "iPad Air 2"
        case "iPad5,1", "iPad5,2":                      return "iPad Mini 4"
        case "iPad6,3", "iPad6,4":                      return "iPad Pro 9.7 inch"
        case "iPad6,7", "iPad6,8":                      return "iPad Pro 12.9 inch"
        case "iPad6,11","iPad6,12":                     return "iPad 5"
        case "iPad7,1", "iPad7,2":                      return "iPad Pro 12.9 inch(2nd Gen)"
        case "iPad7,3", "iPad7,4":                      return "iPad Pro 10.5 inch"
        case "iPad7,5", "iPad7,6":                      return "iPad 6"
            
        case "iPod5,1":                                 return "iPod Touch 5"
        case "iPod7,1":                                 return "iPod Touch 6"
            
        case "AppleTV5,3":                              return "Apple TV"
        case "i386", "x86_64":                          return "iPhone Simulator"
        default:                                        return identifier.replacingOccurrences(of: ",", with: ".")
        }
    }
    
    // MARK: - Private
    private static var deviceIdentifier: String {
        var systemInfo = utsname()
        uname(&systemInfo)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        return machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8, value != 0 else { return identifier }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
    }
    
}
