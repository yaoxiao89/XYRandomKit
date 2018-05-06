//
//  Random.swift
//  XYRandomKit
//
//  Copyright © 2018 Xiao Yao. All rights reserved.
//  See LICENSE.txt for licensing information
//

import Foundation

// MARK: - RandomRepresentable

public protocol RandomRepresentable {
    static var random: Self { get }
    static func randoms(min: Int, max: Int) -> [Self]
}

extension RandomRepresentable {
    
    public static func randoms(min: Int = 1, max: Int = 1 + Int(arc4random() % 10)) -> [Self] {
        var randoms: [Self] = []
        for _ in min...max {
            randoms.append(random)
        }
        return randoms
    }
    
}
