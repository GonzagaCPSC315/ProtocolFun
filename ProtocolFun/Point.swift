//
//  Point.swift
//  ProtocolFun
//
//  Created by Gina Sprint on 9/15/20.
//  Copyright © 2020 Gina Sprint. All rights reserved.
//

import Foundation

struct Point: CustomStringConvertible, Equatable {
    var x: Double
    var y: Double
    var description: String {
        return "(\(x), \(y))"
    }
    
    mutating func translate(byX: Double, byY: Double) {
        x += byX
        y += byY
    }
    
    static func ==(lhs: Point, rhs: Point) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
    
    // static: means associated with the type not with an instance
    static func pointTester() {
        var origin = Point(x: 0, y: 0)
        print(origin)
        origin.translate(byX: -1.5, byY: 20.0)
        print(origin)
    }
}
