//
//  NJHictionary+Get.swift
//  JHExtension
//
//  Created by Ray on 2018/8/16.
//  Copyright © 2018年 Ray. All rights reserved.
//

import Foundation

extension NSDictionary {
    public func int(_ key: String, defaultValue: Int = 0) -> Int {
        return self[key] as? Int ?? defaultValue
    }
    
    public func double(_ key: String, defaultValue: Double = 0.0) -> Double {
        return self[key] as? Double ?? defaultValue
    }
    
    public func bool(_ key: String, defaultValue: Bool = false) -> Bool {
        return self[key] as? Bool ?? defaultValue
    }
    
    public func string(_ key: String, defaultValue: String = "") -> String {
        return self[key] as? String ?? defaultValue
    }
    
    public func dictionary(_ key: String) -> [String:Any] {
        return self[key] as? [String:Any] ?? [:]
    }
    
    public func arrayDictionary(_ key: String) -> [[String:Any]] {
        return self[key] as? [[String:Any]] ?? []
    }
    
    public func arrayInt(_ key: String) -> [Int] {
        return self[key] as? [Int] ?? []
    }
    
    public func arrayString(_ key: String) -> [String] {
        return self[key] as? [String] ?? []
    }
}

extension Dictionary where Key == String {
    public func int(_ key: String, defaultValue: Int = 0) -> Int {
        return self[key] as? Int ?? defaultValue
    }
    
    public func double(_ key: String, defaultValue: Double = 0.0) -> Double {
        return self[key] as? Double ?? defaultValue
    }
    
    public func bool(_ key: String, defaultValue: Bool = false) -> Bool {
        return self[key] as? Bool ?? defaultValue
    }
    
    public func string(_ key: String, defaultValue: String = "") -> String {
        return self[key] as? String ?? defaultValue
    }
    
    public func dictionary(_ key: String) -> [String:Any] {
        return self[key] as? [String:Any] ?? [:]
    }
    
    public func arrayDictionary(_ key: String) -> [[String:Any]] {
        return self[key] as? [[String:Any]] ?? []
    }
    
    public func arrayInt(_ key: String) -> [Int] {
        return self[key] as? [Int] ?? []
    }
    
    public func arrayString(_ key: String) -> [String] {
        return self[key] as? [String] ?? []
    }
}
