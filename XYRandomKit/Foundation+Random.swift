//
//  Foundation+Random.swift
//  XYRandomKit
//
//  Copyright © 2018 Xiao Yao. All rights reserved.
//  See LICENSE.txt for licensing information
//

import Foundation

// MARK: - Bool

extension Bool: RandomRepresentable {
    
    public static var random: Bool {
        return Int.random % 2 == 0
    }
    
}

// MARK: - Date

extension Date: RandomRepresentable {
    
    public static var random: Date {
        return Date(timeIntervalSinceNow: Double.random)
    }
    
}

// MARK: - Double

extension Double: RandomRepresentable {
    
    public static var random: Double {
        return Double(Int.random)
    }
    
}

// MARK: - Float

extension Float: RandomRepresentable {
    
    public static var random: Float {
        return Float(Int.random)
    }
    
}

// MARK: - Int

extension Int: RandomRepresentable {
    
    public static var random: Int {
        return Int(arc4random())
    }
    
}

// MARK: - String

extension String: RandomRepresentable {
    
    public static var random: String {
        return UUID().uuidString
    }
    
}
