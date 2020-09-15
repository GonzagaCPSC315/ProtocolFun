//
//  Circle.swift
//  ProtocolFun
//
//  Created by Gina Sprint on 9/15/20.
//  Copyright © 2020 Gina Sprint. All rights reserved.
//

import Foundation

// Swift has a Comparable protocol
// it has one static method <(lhs:, rhs:) -> Bool
// Comparable "inherits" from Equatable
// Equatable has one static method ==(lhs:, rhs:) -> Bool
struct Circle: CustomStringConvertible, Shape, Comparable {
    // task: Define a Rectangle struct that conforms to Shape
    
    var center: Point
    var radius: Double
    var description: String {
        return "Circle with center at \(center) and radius of \(radius)"
    }
    
    init(center: Point, radius: Double) {
        self.center = center
        self.radius = radius
    }
    
    init() {
        self.center = Point(x: 0, y: 0)
        self.radius = 1.0
    }
    
    func computeArea() -> Double {
        return Double.pi * pow(radius, 2)
    }
    
    func computePerimeter() -> Double {
        return 2 * Double.pi * radius
    }
    
    static func <(lhs: Circle, rhs: Circle) -> Bool {
        return lhs.radius < rhs.radius
    }
    
    static func ==(lhs: Circle, rhs: Circle) -> Bool {
        return lhs.radius == rhs.radius && lhs.center == rhs.center
    }
    
    static func circleTester() {
        var circle1 = Circle() // default initializer
        var circle2 = Circle(center: Point(x: 5.0, y: 10.0), radius: 12.0) // memberwise initializer
        var circle3 = circle2 // makes a copy
        circle3.radius = 100.0
        // make an array
        var circles = [circle1, circle2, circle3, Circle(center: Point(x: 0, y: 0), radius: 10.0)]
        print(circles)
        
        for (i, circle) in circles.enumerated() {
            print("#\(i): \(circle)")
        }
        circles.sort()
        for (i, circle) in circles.enumerated() {
            print("#\(i): \(circle)")
        }
        
    }
}
