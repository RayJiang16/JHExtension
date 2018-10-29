//
//  UserDefaults+JHCustom.swift
//  Ray
//
//  Created by Ray on 2018/8/21.
//  Copyright © 2018年 Ray. All rights reserved.
//

import Foundation

extension UserDefaults {
    
    public struct User: UserDefaultsSettable {
        public enum defaultKeys: String {
            case uuid
            case token
        }
    }
    
    public struct Tip: UserDefaultsSettable {
        public enum defaultKeys: String {
            case hideGuide
        }
    }
    
    public struct System: UserDefaultsSettable {
        public enum defaultKeys: String {
            case version
        }
    }
    
}

public protocol UserDefaultsSettable {
    associatedtype defaultKeys: RawRepresentable
}

extension UserDefaultsSettable where defaultKeys.RawValue == String {
    // String
    public static func set(value: String?, forKey key: defaultKeys) {
        UserDefaults.standard.set(value, forKey: key.rawValue.addPrefix())
    }
    
    public static func string(forKey key: defaultKeys) -> String? {
        return UserDefaults.standard.string(forKey: key.rawValue.addPrefix())
    }
    
    // Bool
    public static func set(value: Bool?, forKey key: defaultKeys) {
        UserDefaults.standard.set(value, forKey: key.rawValue.addPrefix())
    }
    
    public static func bool(forKey key: defaultKeys) -> Bool {
        return UserDefaults.standard.bool(forKey: key.rawValue.addPrefix())
    }
    
    // Int
    public static func set(value: Int?, forKey key: defaultKeys) {
        UserDefaults.standard.set(value, forKey: key.rawValue.addPrefix())
    }
    
    public static func int(forKey key: defaultKeys) -> Int {
        return UserDefaults.standard.integer(forKey: key.rawValue.addPrefix())
    }
    
}

extension String {
    func addPrefix() -> String {
        return "JH_\(self)"
    }
}
