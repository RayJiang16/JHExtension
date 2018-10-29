//
//  Date+JHDate.swift
//  Ray
//
//  Created by Ray on 2018/4/9.
//  Copyright © 2018年 Ray. All rights reserved.
//

import Foundation

extension Date {
    
    public static var timestamp: String {
        return "\(Date().timeIntervalSince1970)"
    }
    
    public static func getCurrentTime(withFormat: String) -> String {
        let now = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = withFormat
        return formatter.string(from: now)
    }
    
    public static func getTime(_ timestamp: Int, format: String) -> String {
        let time = Date(timeIntervalSince1970: TimeInterval(timestamp))
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: time)
    }
    
}
